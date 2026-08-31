# Network Capacity in General Cargo Logistics

This case study places students in the role of an analytics task force at RheinMain CargoLink, a fictional general cargo carrier operating a hub-and-depot network across Germany. The company is under pressure to improve service levels while deciding whether capacity should be added, reallocated, or managed through different operating rules.

The material is designed for students in production, logistics and supply chain management, with prior exposure to data analysis. The main analytical work can be completed in Excel, but students may also use Python, R, Power BI, or similar tools for cleaning, modelling, and visualization.

## Learning Objectives

- Diagnose capacity bottlenecks from shipment, linehaul, location, lane, and backlog data.
- Compare how depots, hubs, dock doors, yard limits, and linehaul lanes affect service performance.
- Identify likely process drivers behind late consignments, missed cut-offs, overflow, and backlog.
- Evaluate whether current capacity allocation and operating rules contribute to service failures.
- Translate data findings into management recommendations.

## Suggested Course Format

- Kick-off session: case introduction, scope definition, team roles.
- Online meeting 1: data audit and first network-capacity hypotheses.
- Online meeting 2: bottleneck, service-level, backlog, and cost-impact analysis.
- Final face-to-face session: management presentation and Q&A.

## Files

- `01_Summary of files.md`: overview of the case package.
- `02_Briefing for Team.md`: deliverables, milestones, and guiding questions.
- `03_Case Description.md`: student-facing case narrative.
- `04_Data Dictionary.md`: field definitions, network logic, and known limitations.
- `05_Dataset Summary.md`: generation and verification summary.
- `instructor_note.md`: teaching guidance, likely solution pathways, and facilitation notes.
- `data/shipment_consignments_part_01_of_06.xlsx` through `part_06_of_06`: shipment-level consignment data.
- `data/linehaul_movements_part_01_of_02.xlsx` through `part_02_of_02`: linehaul movement data.
- `data/daily_location_capacity.xlsx`: location-day capacity and workload data.
- `data/daily_lane_capacity.xlsx`: lane-day capacity data.
- `data/daily_service_backlog.xlsx`: daily service and backlog data.
- `data/reference_tables.xlsx`: location, lane, cost, and calendar reference data.
- `scripts/generate_network_capacity_datasets.py`: reproducible synthetic data generator.

If a cloned repository does not include the Excel workbooks, regenerate them locally with the script above. The generator creates the same workbook structure and row counts.

## Dataset Scope

The dataset covers a three-month operating window in a general cargo network. It includes 480,000 shipment-level consignment records, 120,000 linehaul movement records, and daily capacity, lane, service, backlog, and reference data. The records intentionally contain realistic data-quality issues such as missing values, inconsistent service-class labels, duplicate consignment IDs, capacity gaps, overflow events, missed cut-offs, and outlier weights.

The datasets are fictional and generated for teaching purposes. They are not based on confidential company records.
