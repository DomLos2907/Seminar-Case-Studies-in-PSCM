# Instructor Note (Non-public in GitHub and invidible for students)

This note is intended for instructors and facilitators. The case is designed to be challenging but solvable with Excel-based data analysis, especially if teams use Power Query, pivot tables, structured formulas, or Python/R for preprocessing.

## Teaching Purpose

The case forces students to distinguish between:

- inventory inaccuracy as a data and process-control problem;
- waste as an operational and financial outcome;
- structural perishability versus avoidable write-offs;
- category-specific logistics routines;
- management recommendations versus purely technical findings.

The most common weak student answer is to rank assortments by total waste cost. A stronger answer normalizes waste and investigates whether waste is connected to stock inaccuracies, late postings, negative stock, pack-size errors, and replenishment behavior.

## Expected Analytical Pathways

Strong teams will usually:

1. Build a data-quality profile for each assortment.
2. Reconcile signed movements by transaction type.
3. Compute indicators such as waste-to-sales ratio, count-adjustment intensity, negative-stock frequency, correction share, and late-posting share.
4. Compare store clusters and SKU groups rather than relying only on aggregate totals.
5. Separate structural perishability from avoidable process waste.
6. Translate analysis into a prioritized operational intervention.

## Likely Insights

### Frozen Food

Frozen food should show low structural waste. Waste spikes, negative stock, and corrections should draw attention to process problems such as freezer incident handling, transfer posting, or case-to-unit conversion errors. Students may find that frozen food has lower waste but a meaningful inventory-accuracy issue in selected stores or SKU groups.

### Fresh Produce

Produce will show higher expected waste because shelf life is short and demand is volatile. Strong teams should avoid treating all produce waste as avoidable. Useful analysis compares waste to sales, shelf life, demand profile, and delivery rhythm. Count adjustments and late postings can distort daily conclusions.

### Bake-off Bakery

Bakery can generate high end-of-day waste and process ambiguity because thawing and fresh-shelf movements are operationally distinct. Students should look for stores with high waste despite similar sales volumes, suspicious thaw-to-sales ratios, and inconsistent transaction-type usage.

## Facilitation Questions

- What would change in your recommendation if all missing values were excluded?
- Which metric would you put on a store manager dashboard first?
- Is your highest-waste assortment also the best intervention target?
- How do you distinguish an operational problem from a recording problem?
- What would you ask the company to measure next?
- Which recommendation could create lower waste but worse availability?

## Suggested Final Recommendation Structure

1. Executive answer: where to intervene first and why.
2. Evidence: three to five facts, each supported by one visual.
3. Diagnostic logic: how inventory accuracy and waste were measured.
4. Intervention design: process, data, and ordering-policy changes.
5. Expected impact and risks.
6. Next steps for implementation and measurement.

## Grading Emphasis

Reward teams that make disciplined trade-offs. The case is intentionally messy; there is no single perfect answer. The best teams will be transparent about assumptions, avoid overclaiming, and make recommendations that a retailer could actually pilot.
