# Assignment Brief

## Role

You are an analytics task force advising RheinMain CargoLink's Chief Operations Officer. Your task is to diagnose capacity bottlenecks and service failures in a general cargo hub-and-depot network, then recommend a focused intervention program.

## Team Setup

Each team should assign clear ownership for:

- Data quality and network-flow diagnostics.
- Capacity, utilization, and bottleneck analysis.
- Service, backlog, cost, and management-recommendation design.

Teams may use Excel as the primary tool. Python, R, Power BI, or similar tools are permitted for data preparation, visualization, and robustness checks.

## Core Questions

1. Which locations show the most severe capacity problem after adjusting for their network role?
2. Which capacity dimensions contribute most to service deterioration: inbound handling, outbound handling, dock doors, yard space, or linehaul capacity?
3. Where do backlog and capacity utilization appear to reinforce each other?
4. Which depots, hubs, lanes, service classes, or customer segments should management prioritize?
5. Are observed service failures primarily structural, process-driven, or data-quality-driven?
6. What operating-rule or capacity-allocation changes could improve service without creating unnecessary fixed cost?
7. Which data-quality issues materially affect management conclusions?
8. What KPI dashboard should RheinMain CargoLink introduce for depot and network managers?
9. What is the estimated financial opportunity from the recommended intervention?
10. What risks or unintended consequences could arise if management acts on your recommendation?

## Minimum Analytical Expectations

Your analysis should include:

- A reproducible data-cleaning logic.
- A flow reconciliation by origin, destination, hub, lane, service class, and date.
- Capacity-accuracy indicators, such as utilization rate, overflow frequency, missing-capacity share, missed-cutoff rate, and backlog intensity.
- Service indicators, such as on-time rate, late consignments, backlog units, overflow handling units, and service performance by class.
- A comparison across depots, hubs, linehaul lanes, and service classes.
- Visualizations suitable for a management audience.
- A prioritized intervention roadmap with expected impact and implementation effort.

## Evaluation Criteria

Your work will be evaluated on:

- Business relevance and clarity of recommendation.
- Quality of data handling and transparency of assumptions.
- Ability to distinguish operational bottlenecks from data-quality noise.
- Analytical depth relative to the available data.
- Quality of visual communication.
- Strength of Q&A defense.

## Presentation Guidance

Do not present every table you created. Management needs the answer, the evidence, and the action. Use appendices for technical details, data-cleaning rules, and sensitivity checks.
