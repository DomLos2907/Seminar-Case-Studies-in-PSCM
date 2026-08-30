# Data Files

This folder contains the generated Excel workbooks for the Asterion Motion Systems supplier-reliability case study.

The purchase order, goods receipt, and production demand data are split into GitHub-friendly parts:

- `purchase_orders_part_01_of_05.xlsx` through `purchase_orders_part_05_of_05.xlsx`
- `goods_receipts_part_01_of_03.xlsx` through `goods_receipts_part_03_of_03.xlsx`
- `production_demand_part_01_of_03.xlsx` through `production_demand_part_03_of_03.xlsx`

The folder also contains:

- `shortage_events.xlsx`
- `expedite_shipments.xlsx`
- `reference_tables.xlsx`

If the Excel files are not present in a cloned copy of this repository, regenerate them with:

```powershell
python scripts/generate_supplier_reliability_datasets.py
```

The generated workbooks are fictional synthetic data for teaching purposes.
