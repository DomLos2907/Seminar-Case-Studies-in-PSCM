# Mixed-Effects Models in R: Mini Tutorial
# ------------------------------------------------------------
# Goal:
# A small example that clearly shows:
# - What is the dependent variable?
# - What is the independent variable?
# - What is the fixed intercept?
# - What is the random intercept?

set.seed(123)

# Load packages ------------------------------------------------
# lme4 estimates linear mixed-effects models.
if (!requireNamespace("lme4", quietly = TRUE)) {
  stop("Please install lme4 first: install.packages('lme4')")
}

# ggplot2 is optional and only needed for the plot.
has_ggplot2 <- requireNamespace("ggplot2", quietly = TRUE)


# 1. Simulate example data -------------------------------------

# Imagine the following setting:
# - Students belong to courses.
# - Each student has a study time in hours.
# - Test performance depends on study time.
# - Courses differ in their average baseline performance.

n_courses <- 8
students_per_course <- 25

course <- factor(rep(paste0("Course_", 1:n_courses), each = students_per_course))

# Independent variable:
# study_hours is the independent variable.
# It is used to explain why score changes.
study_hours <- runif(n_courses * students_per_course, min = 0, max = 10)

# Fixed intercept:
# This is the average expected value of score when study_hours = 0.
fixed_intercept <- 50

# Fixed effect:
# This is the average slope: one additional study hour increases
# score by 3 points on average.
fixed_slope_study_hours <- 3

# Random intercept:
# Each course receives its own deviation from the fixed intercept.
# Some courses start higher on average, while others start lower.
course_random_intercepts <- rnorm(n_courses, mean = 0, sd = 6)
names(course_random_intercepts) <- levels(course)

# Student-level random error.
student_error <- rnorm(n_courses * students_per_course, mean = 0, sd = 5)

# Dependent variable:
# score is the dependent variable, meaning the outcome we want to explain.
score <- fixed_intercept +
  fixed_slope_study_hours * study_hours +
  course_random_intercepts[course] +
  student_error

data <- data.frame(
  score = score,
  study_hours = study_hours,
  course = course
)

cat("\nFirst rows of the example data:\n")
print(head(data))


# 2. Simple model without a random intercept -------------------

# This model ignores that students are grouped within courses.
# It assumes that all courses have the same intercept.
model_lm <- lm(score ~ study_hours, data = data)

cat("\n\nSimple linear model without a random intercept:\n")
print(summary(model_lm))


# 3. Mixed-effects model with a random intercept ----------------

# Formula:
# score ~ study_hours + (1 | course)
#
# Meaning:
# - score: dependent variable
# - study_hours: independent variable
# - study_hours on the right-hand side: fixed effect
# - (1 | course): random intercept for each course

model_mixed <- lme4::lmer(score ~ study_hours + (1 | course), data = data)

cat("\n\nMixed-effects model with a random intercept:\n")
print(summary(model_mixed))


# 4. Show the most important model components ------------------

cat("\n\nFixed effects:\n")
fixed_effects <- lme4::fixef(model_mixed)
print(fixed_effects)

cat("\nInterpretation of the fixed intercept:\n")
cat("- The intercept is the average expected score when study_hours = 0.\n")

cat("\nInterpretation of the fixed effect for study_hours:\n")
cat("- The slope for study_hours shows how much score increases on average per additional study hour.\n")

cat("\n\nRandom intercepts by course:\n")
random_effects <- lme4::ranef(model_mixed)$course
print(random_effects)

cat("\nInterpretation of the random intercept:\n")
cat("- Positive values: the course is above the average intercept.\n")
cat("- Negative values: the course is below the average intercept.\n")


# 5. Prediction for one example student ------------------------

new_student <- data.frame(
  study_hours = 5,
  course = factor("Course_1", levels = levels(data$course))
)

predicted_score <- predict(model_mixed, newdata = new_student)

cat("\n\nExample prediction:\n")
cat("Expected score for a student in Course_1 with 5 study hours:\n")
print(predicted_score)


# 6. Optional visualization ------------------------------------

if (has_ggplot2) {
  library(ggplot2)

  plot <- ggplot(data, aes(x = study_hours, y = score, color = course)) +
    geom_point(alpha = 0.7) +
    geom_smooth(method = "lm", se = FALSE) +
    labs(
      title = "Mixed-Effects Example: Study Time and Test Performance",
      subtitle = "Each course has its own baseline level (random intercept)",
      x = "Independent variable: study_hours",
      y = "Dependent variable: score",
      color = "Course"
    ) +
    theme_minimal()

  print(plot)
} else {
  cat("\n\nNote: ggplot2 is not installed, so no plot is created.\n")
  cat("Optional installation: install.packages('ggplot2')\n")
}
