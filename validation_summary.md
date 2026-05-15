# Validation Summary

Generated on 2026-05-15 for the Norda Market inventory-inaccuracy case study.

## Workbook Checks

| Workbook | Transaction rows | Columns | Sheets | Size |
| --- | ---: | ---: | --- | ---: |
| `bakery_inventory_transactions.xlsx` | 600,000 | 28 | Transactions, SKU_Master, Store_Master, Assumptions | 77.4 MB |
| `frozen_inventory_transactions.xlsx` | 600,000 | 28 | Transactions, SKU_Master, Store_Master, Assumptions | 77.5 MB |
| `produce_inventory_transactions.xlsx` | 600,000 | 28 | Transactions, SKU_Master, Store_Master, Assumptions | 76.3 MB |

## Embedded Teaching Signals

| Workbook | Rows with visible exception codes | Rows with negative book stock after movement | Waste and shrink units |
| --- | ---: | ---: | ---: |
| `bakery_inventory_transactions.xlsx` | 31,402 | 15,457 | 1,029,469 |
| `frozen_inventory_transactions.xlsx` | 20,027 | 8,837 | 76,502 |
| `produce_inventory_transactions.xlsx` | 43,519 | 38,940 | 708,022 |

## Notes

- Exception codes are intentionally incomplete. Blank exception cells do not mean a row is clean.
- Negative book stock is intentionally present and should be interpreted diagnostically.
- Waste levels differ structurally by assortment and should be normalized before comparing management priorities.
- All files are under GitHub's 100 MB hard file-size limit for regular repository files.
