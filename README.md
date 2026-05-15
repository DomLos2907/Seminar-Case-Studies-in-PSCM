# Inventory Inaccuracies in Food Retail

This case study places students in the role of an analytics task force at Norda Market, a fictional mid-sized food retailer operating stores across Germany. The company is under pressure to reduce avoidable waste and recover inventory accuracy in three operationally different assortments: frozen food, fresh produce, and bake-off bakery.

The material is designed for undergraduate students in logistics and supply chain management, with prior exposure to data analysis. The main analytical work can be completed in Excel, but students may also use Python, R, Power BI, or similar tools for cleaning, modelling, and visualization.

## Learning Objectives

- Diagnose inventory inaccuracies from transaction-level goods movements.
- Compare how shelf life, demand volatility, and handling routines affect waste.
- Identify likely process drivers behind book-to-physical stock deviations.
- Evaluate whether current ordering and replenishment routines contribute to shrink and write-offs.
- Translate data findings into management recommendations.

## Suggested Course Format

- Kick-off session: case introduction, scope definition, team roles.
- Online meeting 1: data audit and first inventory-accuracy hypotheses.
- Online meeting 2: waste, ordering-policy, and financial-impact analysis.
- Final face-to-face session: management presentation and Q&A.

## Files

- `case_study.md`: student-facing case narrative.
- `assignment_brief.md`: deliverables, milestones, and guiding questions.
- `data_dictionary.md`: field definitions, transaction logic, and known limitations.
- `instructor_note.md`: teaching guidance, likely solution pathways, and facilitation notes.
- `validation_summary.md`: generation and verification summary.
- `data/frozen_inventory_transactions.xlsx`: frozen-food transaction data.
- `data/produce_inventory_transactions.xlsx`: fruit and vegetable transaction data.
- `data/bakery_inventory_transactions.xlsx`: bake-off bakery transaction data.
- `scripts/generate_inventory_datasets.py`: reproducible synthetic data generator.

If a cloned repository does not include the large Excel workbooks, regenerate them locally with the script above. The generator creates the same workbook structure and row count.

## Dataset Scope

Each assortment dataset contains approximately 600,000 inventory transaction rows across a three-month operating window. The data include sales, goods receipts, transfers, waste bookings, shrinkage, cycle-count adjustments, and selected correction transactions. The records intentionally contain realistic data-quality issues such as missing values, pack-size inconsistencies, late postings, negative book stock, and incorrect signs.

The datasets are fictional and generated for teaching purposes. They are not based on confidential company records.
