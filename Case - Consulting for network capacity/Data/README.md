# Data Files

This folder contains the generated Excel workbooks for the RheinMain CargoLink network-capacity case study.

The shipment and linehaul data are split into GitHub-friendly parts:

- `shipment_consignments_part_01_of_06.xlsx` through `shipment_consignments_part_06_of_06.xlsx`
- `linehaul_movements_part_01_of_02.xlsx` through `linehaul_movements_part_02_of_02.xlsx`

The folder also contains:

- `daily_location_capacity.xlsx`
- `daily_lane_capacity.xlsx`
- `daily_service_backlog.xlsx`
- `reference_tables.xlsx`

If the Excel files are not present in a cloned copy of this repository, regenerate them with:

```powershell
python scripts/generate_network_capacity_datasets.py
```

The generated workbooks are fictional synthetic data for teaching purposes.
