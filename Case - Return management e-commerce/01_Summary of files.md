# Returns Management in E-Commerce

This case study places students in the role of an analytics task force at LumaHome Online, a fictional European e-commerce retailer selling apparel, footwear, consumer electronics, home living products, sports equipment, and seasonal assortments. The company is growing quickly, but high return rates, limited inspection capacity, and value loss from delayed remarketing are putting pressure on profitability and customer experience.

The material is designed for students in production, logistics, and supply chain management, with prior exposure to data analysis. The main analytical work can be completed in Excel, but students may also use Python, R, Power BI, or similar tools for cleaning, modelling, and visualization.

## Learning Objectives

- Diagnose return drivers using order-line, return authorization, inspection, refund, remarketing, and capacity data.
- Compare customer-service promises against inspection capacity, backlog, refund speed, resale recovery, and write-off risk.
- Identify where delayed processing creates value loss.
- Evaluate whether return policy, inspection routing, staffing, refurbishment, and remarketing decisions should be changed.
- Translate data findings into management recommendations that balance customer experience, operational capacity, and financial recovery.

## Suggested Course Format

- Kick-off session: case introduction, scope definition, team roles.
- Online meeting 1: data audit and first return-rate and capacity hypotheses.
- Online meeting 2: inspection backlog, refund, resale recovery, and value-loss analysis.
- Final face-to-face session: management presentation and Q&A.

## Files

- `01_Summary of files.md`: overview of the case package.
- `02_Briefing for Team.md`: deliverables, milestones, and guiding questions.
- `03_Case Description.md`: student-facing case narrative.
- `04_Data Dictionary.md`: field definitions, returns logic, and known limitations.
- `05_Dataset Summary.md`: generation and verification summary.
- `instructor_note.md`: teaching guidance, likely solution pathways, and facilitation notes.
- `data/sales_order_lines_part_01_of_07.xlsx` through `part_07_of_07`: order-line data and return exposure.
- `data/return_authorizations_part_01_of_03.xlsx` through `part_03_of_03`: return request and receipt records.
- `data/inspection_events_part_01_of_03.xlsx` through `part_03_of_03`: return-center inspection and triage records.
- `data/refund_transactions_part_01_of_03.xlsx` through `part_03_of_03`: refund processing and manual-review records.
- `data/resale_disposition_part_01_of_03.xlsx` through `part_03_of_03`: resale, outlet, refurbishment, liquidation, vendor return, and recycle decisions.
- `data/capacity_calendar.xlsx`: daily return-center capacity, inbound workload, processed volume, and backlog.
- `data/reference_tables.xlsx`: product, return-center, customer-segment, carrier, calendar, cost, and policy reference data.
- `scripts/generate_returns_management_datasets.py`: reproducible synthetic data generator.

If a cloned repository does not include the Excel workbooks, regenerate them locally with the script above. The generator creates the same workbook structure and row counts.

## Dataset Scope

The dataset covers a six-month operating window in an e-commerce returns operation. It includes sales order lines, return authorizations, parcel receipt dates, inspection queues, condition grading, refund transactions, resale decisions, capacity calendars, product attributes, return-center data, customer segments, carriers, cost assumptions, and policy parameters. The records intentionally contain realistic data-quality issues such as missing return reasons, duplicate RMA references, inconsistent product condition codes, missing receipt or inspection dates, negative or implausible refund amounts, and remarketing records that require interpretation.

The datasets are fictional and generated for teaching purposes. They are not based on confidential company records.
