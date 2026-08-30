# Validation Summary

Generated and validated on 2026-08-30 for the Asterion Motion Systems supplier-reliability case study.

## Workbook Checks

The dataset contains 934,000 operational records plus reference tables. The files are intentionally split so that every Excel workbook remains below the requested 20 MB maximum file size. The largest file is 10.40 MB.

| Workbook | Main rows | Columns | Main sheet | Size |
| --- | ---: | ---: | --- | ---: |
| `purchase_orders_part_01_of_05.xlsx` | 80,000 | 27 | Purchase_Orders | 10.38 MB |
| `purchase_orders_part_02_of_05.xlsx` | 80,000 | 27 | Purchase_Orders | 10.40 MB |
| `purchase_orders_part_03_of_05.xlsx` | 80,000 | 27 | Purchase_Orders | 10.38 MB |
| `purchase_orders_part_04_of_05.xlsx` | 80,000 | 27 | Purchase_Orders | 10.38 MB |
| `purchase_orders_part_05_of_05.xlsx` | 80,000 | 27 | Purchase_Orders | 10.39 MB |
| `goods_receipts_part_01_of_03.xlsx` | 80,000 | 16 | Goods_Receipts | 6.35 MB |
| `goods_receipts_part_02_of_03.xlsx` | 80,000 | 16 | Goods_Receipts | 6.35 MB |
| `goods_receipts_part_03_of_03.xlsx` | 80,000 | 16 | Goods_Receipts | 6.34 MB |
| `production_demand_part_01_of_03.xlsx` | 80,000 | 17 | Production_Demand | 6.42 MB |
| `production_demand_part_02_of_03.xlsx` | 80,000 | 17 | Production_Demand | 6.42 MB |
| `production_demand_part_03_of_03.xlsx` | 80,000 | 17 | Production_Demand | 6.42 MB |
| `shortage_events.xlsx` | 32,000 | 17 | Shortage_Events | 2.57 MB |
| `expedite_shipments.xlsx` | 22,000 | 14 | Expedite_Shipments | 1.61 MB |
| `reference_tables.xlsx` | 654 reference rows | multiple | reference sheets | 0.04 MB |

## Content Checks

| Dataset | Validated count or distribution |
| --- | --- |
| Purchase orders | 400,000 rows; On Time 260,758; Late 84,929; Partial 33,416; Quality Hold 15,720; Open 2,771; Cancelled 2,406. |
| Purchase-order exception codes | 100,929 rows contain at least one visible exception code. Blank cells do not mean that a row is clean. |
| Goods receipts | 240,000 rows; Released 222,684; Inspection 4,390; Blocked 4,383; Rejected 4,372; Rework 4,171. |
| Goods-receipt exception codes | 31,417 rows contain at least one visible exception code. |
| Production demand | 240,000 rows; 52,499 rows carry a production-risk flag; 13,560 rows contain at least one visible exception code. |
| Shortage events | 32,000 rows; Resolved 27,670; Open 3,845; Data Review 485. |
| Shortage root causes | Supplier Delay 10,555; Planning Parameter 5,122; Quality Hold 5,017; Partial Delivery 4,469; Demand Spike 3,202; Unknown 2,328; Master Data 1,307. |
| Expedite shipments | 22,000 rows; total expedite cost EUR 62.40 million. |
| Shortage impact | Total estimated shortage cost EUR 1.28 billion. |

## Embedded Teaching Signals

The generated data are designed to include visible and hidden teaching signals:

| Dataset | Intended signal |
| --- | --- |
| Purchase orders | Late deliveries, partial deliveries, missing confirmations, unit-of-measure inconsistencies, lead-time outliers. |
| Goods receipts | Posting delays, rejected quantities, quality holds, duplicate reference documents. |
| Production demand | Demand spikes, outdated safety-stock parameters, line-stopper material exposure. |
| Shortage events | Production disruption, downtime cost, root-cause ambiguity, escalation patterns. |
| Expedite shipments | Premium freight cost, emergency sourcing, days saved, avoided downtime. |

## Reference Tables

`reference_tables.xlsx` contains 95 supplier records, 360 material records, 6 plant records, 7 cost-parameter records, 181 calendar records, and 5 assumption records. Split workbooks also include the relevant reference and assumption sheets where useful.

## Notes

- Exception codes are intentionally incomplete. Blank exception cells do not mean a row is clean.
- Shortage events are intentionally present and should be interpreted diagnostically.
- Supplier performance differs structurally by material group, criticality, plant, and demand pattern.
- Students should avoid ranking suppliers by a single unadjusted KPI.
- All Excel files are below the requested 20 MB maximum file size.
