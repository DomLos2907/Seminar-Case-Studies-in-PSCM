# Supplier Reliability and Material Shortages in Manufacturing

This case study places students in the role of an analytics task force at Asterion Motion Systems, a fictional mid-sized manufacturer of electromechanical drive modules for industrial equipment and commercial vehicles. The company is under pressure to reduce production disruptions caused by late supplier deliveries, partial receipts, quality holds, and material shortages.

The material is designed for students in logistics and supply chain management, with prior exposure to data analysis. The main analytical work can be completed in Excel, but students may also use Python, R, Power BI, or similar tools for cleaning, modelling, and visualization.

## Learning Objectives

- Diagnose supplier reliability problems from purchase order, goods receipt, shortage, and production demand data.
- Compare how lead time, supplier dependency, material criticality, and demand volatility affect production risk.
- Identify likely process drivers behind late deliveries, partial deliveries, quality holds, and shortage events.
- Evaluate whether current planning parameters and sourcing decisions contribute to material shortages.
- Translate data findings into management recommendations.

## Suggested Course Format

- Kick-off session: case introduction, scope definition, team roles.
- Online meeting 1: data audit and first supplier-reliability hypotheses.
- Online meeting 2: shortage, lead-time, planning-parameter, and cost-impact analysis.
- Final face-to-face session: management presentation and Q&A.

## Files

- `01_Summary of files.md`: overview of the case package.
- `02_Briefing for Team.md`: deliverables, milestones, and guiding questions.
- `03_Case Description.md`: student-facing case narrative.
- `04_Data Dictionary.md`: field definitions, purchasing logic, and known limitations.
- `05_Dataset Summary.md`: generation and verification summary.
- `instructor_note.md`: teaching guidance, likely solution pathways, and facilitation notes.
- `data/purchase_orders_part_01_of_05.xlsx` through `part_05_of_05`: purchase order line data.
- `data/goods_receipts_part_01_of_03.xlsx` through `part_03_of_03`: goods receipt transaction data.
- `data/production_demand_part_01_of_03.xlsx` through `part_03_of_03`: material demand and production plan data.
- `data/shortage_events.xlsx`: shortage and production disruption events.
- `data/expedite_shipments.xlsx`: premium freight and emergency sourcing records.
- `data/reference_tables.xlsx`: supplier, material, plant, cost, and calendar reference data.
- `scripts/generate_supplier_reliability_datasets.py`: reproducible synthetic data generator.

If a cloned repository does not include the Excel workbooks, regenerate them locally with the script above. The generator creates the same workbook structure and row counts.

## Dataset Scope

The dataset covers a six-month operating window in a manufacturing supply chain. It includes purchase orders, goods receipts, production demand, shortage events, expedite shipments, supplier attributes, material master data, plant data, and cost assumptions. The records intentionally contain realistic data-quality issues such as missing supplier confirmations, inconsistent units of measure, duplicate purchase order lines, late postings, partial deliveries, quality holds, lead-time outliers, and incomplete shortage root-cause codes.

The datasets are fictional and generated for teaching purposes. They are not based on confidential company records.
