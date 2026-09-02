# Transport Tendering and Carrier Performance

This case study places students in the role of an analytics task force at Veridian Home & Living, a fictional European manufacturer and distributor of household appliances, home improvement products, and seasonal consumer goods. The company awards transport volumes to contracted carriers through annual and mini-tender processes, but its recent low-cost sourcing strategy has created a difficult trade-off between freight cost, delivery service, spot-market exposure, and CO2 performance.

The material is designed for students in production, logistics and supply chain management, with prior exposure to data analysis. The main analytical work can be completed in Excel, but students may also use Python, R, Power BI, or similar tools for cleaning, modelling, and visualization.

## Learning Objectives

- Diagnose carrier performance using tender bids, lane awards, shipment execution, spot-market quotes, service failures, and sustainability data.
- Compare freight cost savings against late deliveries, tender rejections, spot premiums, claims, and CO2 target deviations.
- Identify where cheap contracted carriers create hidden costs or operational risk.
- Evaluate whether carrier allocation, lane strategy, mode choice, and tender governance should be changed.
- Translate data findings into a management recommendation that balances cost, service, resilience, and sustainability.

## Suggested Course Format

- Kick-off session: case introduction, scope definition, team roles.
- Online meeting 1: data audit and first cost-service-sustainability hypotheses.
- Online meeting 2: carrier-performance, tender-waterfall, spot-market, and emissions analysis.
- Final face-to-face session: management presentation and Q&A.

## Files

- `01_Summary of files.md`: overview of the case package.
- `02_Briefing for Team.md`: deliverables, milestones, and guiding questions.
- `03_Case Description.md`: student-facing case narrative.
- `04_Data Dictionary.md`: field definitions, tender logic, and known limitations.
- `05_Dataset Summary.md`: generation and verification summary.
- `instructor_note.md`: teaching guidance, likely solution pathways, and facilitation notes.
- `data/shipment_execution_part_01_of_06.xlsx` through `part_06_of_06`: executed transport shipment records.
- `data/spot_quotes_part_01_of_02.xlsx` through `part_02_of_02`: spot-market quote records linked to tender failures and urgent demand.
- `data/tender_bids.xlsx`: carrier bids by lane, tender round, and commercial offer.
- `data/lane_awards.xlsx`: awarded carrier shares, contracted rates, and service commitments.
- `data/carrier_scorecards.xlsx`: weekly carrier performance scorecards by lane group.
- `data/claims_and_service_failures.xlsx`: late-delivery, missed-appointment, damage, and documentation failure records.
- `data/reference_tables.xlsx`: carrier, lane, site, customer, calendar, cost, and emissions reference data.
- `scripts/generate_transport_tendering_datasets.py`: reproducible synthetic data generator.

If a cloned repository does not include the Excel workbooks, regenerate them locally with the script above. The generator creates the same workbook structure and row counts.

## Dataset Scope

The dataset covers a six-month operating window in a European transport network. It includes contracted tender awards, shipment execution, tender acceptance and rejection outcomes, spot quotes, service failures, carrier scorecards, lane attributes, customer segments, cost assumptions, and CO2 reference parameters. The records intentionally contain realistic data-quality issues such as missing actual-delivery dates, inconsistent lane references, duplicate shipment references, negative or implausible spot premiums, incomplete exception codes, and emissions records that require interpretation.

The datasets are fictional and generated for teaching purposes. They are not based on confidential company records.
