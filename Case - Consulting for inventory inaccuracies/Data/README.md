# Data Files

This folder contains 18 split Excel workbooks:

- `frozen_inventory_transactions_part_01_of_06.xlsx` through `frozen_inventory_transactions_part_06_of_06.xlsx`
- `produce_inventory_transactions_part_01_of_06.xlsx` through `produce_inventory_transactions_part_06_of_06.xlsx`
- `bakery_inventory_transactions_part_01_of_06.xlsx` through `bakery_inventory_transactions_part_06_of_06.xlsx`

Each split workbook contains 100,000 transaction rows plus SKU, store, assumptions, and split-info sheets. All split workbooks are below 20 MB.

If the Excel files are not present in a cloned copy of this repository, regenerate and split them with:

```powershell
python scripts/generate_inventory_datasets.py --rows 600000
python scripts/split_inventory_workbooks.py --move-sources
```

The generated workbooks are fictional synthetic data for teaching purposes.
