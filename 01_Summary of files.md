# Summary of Files

## Case Study

**Network Capacity in General Cargo Logistics** is a Bachelor-level logistics and supply chain management case study. It places students in the role of an analytics task force advising a fictional general cargo carrier, RheinMain CargoLink, on capacity bottlenecks in a hub-and-depot network.

The case is intentionally designed without warehouse order picking. The analytical focus is on site capacities, linehaul capacities, shipment flows, cut-off times, backlog, service performance, and the trade-off between additional capacity, network rebalancing, and service quality.

## Teaching Context

The case is suitable for students in the 3rd or 4th Bachelor semester who have already completed introductory coursework in logistics or supply chain management and have basic data-analysis skills. Excel is sufficient for the core analysis, while Python, R, Power BI, or similar tools may be used for larger data handling and visualization.

## Main Files

- `01_Summary of files.md`: overview of the case package.
- `02_Briefing for Team.md`: student-facing assignment brief, deliverables, and guiding questions.
- `03_Case Description.md`: case narrative and management dilemma.
- `04_Data Dictionary.md`: detailed explanation of workbook fields and analytical caveats.
- `05_Dataset Summary.md`: generated data overview and validation summary.
- `instructor_note.md`: teaching guidance, expected analysis paths, and facilitation questions.
- `scripts/generate_network_capacity_datasets.py`: reproducible synthetic data generator.

## Data Files

The `data` folder contains Excel workbooks for:

- shipment-level consignment data;
- linehaul movement records;
- daily location capacity;
- daily lane capacity;
- daily service and backlog performance;
- location, lane, cost, and calendar reference data.

The shipment-level data are split into several XLSX files so that each workbook remains below 20 MB and can be handled more easily in GitHub and common teaching environments.

## Learning Objectives

Students should learn to:

- diagnose capacity bottlenecks in a general cargo network;
- distinguish structural bottlenecks from temporary execution problems;
- evaluate depot, hub, dock, yard, and linehaul constraints;
- assess service-level impact and backlog accumulation;
- identify whether poor performance is caused by insufficient total capacity or poor allocation of available capacity;
- develop management recommendations under budget and implementation constraints.

## Important Design Choice

The case deliberately excludes order picking. General cargo shipments are already consigned, loaded, unloaded, consolidated, sorted through the network, and moved by linehaul or local delivery. This keeps the analytical focus on network capacity rather than warehouse operations.
