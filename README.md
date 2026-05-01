# Mixed-Effects Models in R: Mini Tutorial

This mini project shows, with a simple example, how a mixed-effects model is structured in R.

In the example, we examine whether study time (`study_hours`) affects students' test performance (`score`). Students are nested within different courses. Each course is allowed to have its own baseline level. This course-specific baseline is modeled as a random intercept.

## Key Terms in This Example

- Dependent variable: `score`
- Independent variable: `study_hours`
- Fixed intercept: the average expected value of `score` when `study_hours = 0`
- Fixed effect / fixed slope: the average effect of `study_hours` on `score`
- Random intercept: the course-specific deviation from the average intercept
- Grouping variable: `course`

## Files

- `mixed_effects_tutorial.R`: R code with simulated data, model estimation, and comments
- `.gitignore`: ignores common local R files

## How to Run

In R or RStudio:

```r
source("mixed_effects_tutorial.R")
```

If `lme4` is not installed yet:

```r
install.packages("lme4")
```

Optional for the visualization:

```r
install.packages("ggplot2")
```

## Model Formula

```r
score ~ study_hours + (1 | course)
```

This means:

- `score`: dependent variable
- `study_hours`: independent variable with a fixed effect
- `(1 | course)`: each course receives its own random intercept

## Interpretation

If the estimated fixed effect for `study_hours` is positive, this means that, on average, expected test performance increases as study time increases.

The random intercept allows courses to have different baseline levels. Some courses therefore start above the overall intercept, while others start below it.
