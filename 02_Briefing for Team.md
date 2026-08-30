# Briefing for Team

## Your Role

You are a three-person analytics task force advising the executive board of RheinMain CargoLink, a fictional general cargo carrier operating a hub-and-depot network in Germany and neighboring cross-border regions.

The company has experienced deteriorating service levels during a quarter with uneven demand growth. Some depots report overloaded docks and yard congestion, while other sites still appear to have spare capacity. Management must decide whether to buy temporary capacity, reallocate freight flows, adjust linehaul schedules, change cut-off rules, or invest in selected locations.

Your task is to diagnose the capacity problem and recommend a focused intervention.

## Business Question

Where should RheinMain CargoLink intervene first to improve service performance in its general cargo network without creating unnecessary fixed cost?

## Team Setup

Assign clear responsibility for:

- data quality and flow reconciliation;
- capacity and bottleneck analysis;
- service, backlog, cost, and management recommendation.

You may use Excel as the primary tool. Python, R, Power BI, or similar tools are permitted for preprocessing, visualization, and robustness checks.

## Deliverables

Before the final session, each team must submit:

- an analytical workbook or model containing the cleaned data logic, assumptions, calculations, and key outputs;
- a management presentation of up to 10 slides.

At the final session, each team will deliver:

- a 15-minute management presentation;
- a 10-minute Q&A defending the analysis, assumptions, and recommendations.

## Suggested Milestones

### Kick-off Session

- Understand the network structure and available datasets.
- Clarify what capacity means in a general cargo network.
- Form initial hypotheses about bottleneck locations and lanes.

### Online Meeting 1

- Present a first data-quality assessment.
- Show preliminary flow and capacity-utilization indicators.
- Identify locations, lanes, service classes, or dates that require deeper analysis.

### Online Meeting 2

- Present service-level and backlog findings.
- Link service failures to location and linehaul capacity signals.
- Draft the recommended intervention logic and expected impact.

### Final Session

- Present the final management recommendation.
- Defend assumptions, prioritization, and risks.

## Core Questions

1. Which locations appear to be the most critical bottlenecks?
2. Are bottlenecks driven by inbound handling, outbound handling, dock-door limits, yard limits, or linehaul capacity?
3. Which lanes create the strongest service risk?
4. Is the network capacity problem structural, seasonal, regional, or execution-driven?
5. Which service classes and customer segments are most affected?
6. Does the network have enough total capacity but poor allocation, or is additional capacity required?
7. How does backlog evolve over time and where does it accumulate?
8. Which data-quality issues materially affect the conclusion?
9. What operational intervention should management pilot first?
10. What KPI dashboard should RheinMain CargoLink introduce for depot and network managers?

## Minimum Analytical Expectations

Your analysis should include:

- a reproducible data-cleaning logic;
- a flow view by origin, destination, hub, service class, and date;
- utilization metrics for depots, hubs, and linehaul lanes;
- service-level metrics such as on-time rate, late consignments, backlog units, and missed cut-offs;
- a distinction between site bottlenecks and lane bottlenecks;
- at least three management-ready visualizations;
- a prioritized recommendation with estimated cost, service impact, and implementation risk.

## Evaluation Criteria

Your work will be evaluated on:

- clarity of business recommendation;
- quality of data handling and transparent assumptions;
- depth of logistics reasoning;
- ability to distinguish symptoms from root causes;
- quality of visual communication;
- feasibility of implementation;
- strength of Q&A defense.

## Presentation Guidance

Do not present every pivot table. Management needs a clear answer, credible evidence, and an action plan. Use appendices for technical details, cleaning rules, and sensitivity checks.
