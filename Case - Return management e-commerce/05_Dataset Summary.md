# Validation Summary

Generated and validated on 2026-08-30 for the LumaHome Online returns-management case study.

## Workbook Checks

The dataset contains 1,348,620 operational records plus reference tables. The files are intentionally split so that every Excel workbook remains below the requested 20 MB maximum file size. The largest file is 8.61 MB.

| Workbook | Main rows | Columns | Main sheet | Size |
| --- | ---: | ---: | --- | ---: |
| `sales_order_lines_part_01_of_07.xlsx` | 80,000 | 20 | Sales_Order_Lines | 8.61 MB |
| `sales_order_lines_part_02_of_07.xlsx` | 80,000 | 20 | Sales_Order_Lines | 8.60 MB |
| `sales_order_lines_part_03_of_07.xlsx` | 80,000 | 20 | Sales_Order_Lines | 8.60 MB |
| `sales_order_lines_part_04_of_07.xlsx` | 80,000 | 20 | Sales_Order_Lines | 8.60 MB |
| `sales_order_lines_part_05_of_07.xlsx` | 80,000 | 20 | Sales_Order_Lines | 8.61 MB |
| `sales_order_lines_part_06_of_07.xlsx` | 80,000 | 20 | Sales_Order_Lines | 8.60 MB |
| `sales_order_lines_part_07_of_07.xlsx` | 40,000 | 20 | Sales_Order_Lines | 4.33 MB |
| `return_authorizations_part_01_of_03.xlsx` | 80,000 | 18 | Return_Authorizations | 7.06 MB |
| `return_authorizations_part_02_of_03.xlsx` | 80,000 | 18 | Return_Authorizations | 7.06 MB |
| `return_authorizations_part_03_of_03.xlsx` | 60,000 | 18 | Return_Authorizations | 5.31 MB |
| `inspection_events_part_01_of_03.xlsx` | 80,000 | 17 | Inspection_Events | 5.91 MB |
| `inspection_events_part_02_of_03.xlsx` | 80,000 | 17 | Inspection_Events | 5.91 MB |
| `inspection_events_part_03_of_03.xlsx` | 60,000 | 17 | Inspection_Events | 4.44 MB |
| `refund_transactions_part_01_of_03.xlsx` | 80,000 | 15 | Refund_Transactions | 5.81 MB |
| `refund_transactions_part_02_of_03.xlsx` | 80,000 | 15 | Refund_Transactions | 5.81 MB |
| `refund_transactions_part_03_of_03.xlsx` | 60,000 | 15 | Refund_Transactions | 4.37 MB |
| `resale_disposition_part_01_of_03.xlsx` | 80,000 | 17 | Resale_Disposition | 7.10 MB |
| `resale_disposition_part_02_of_03.xlsx` | 80,000 | 17 | Resale_Disposition | 7.09 MB |
| `resale_disposition_part_03_of_03.xlsx` | 5,000 | 17 | Resale_Disposition | 0.49 MB |
| `capacity_calendar.xlsx` | 3,620 | 16 | Capacity_Calendar | 0.27 MB |
| `reference_tables.xlsx` | 905 reference rows | multiple | reference sheets | 0.06 MB |

## Content Checks

| Dataset | Validated count or distribution |
| --- | --- |
| Sales order lines | 520,000 rows; Apparel 212,937; Footwear 92,054; Home Living 69,220; Consumer Electronics 59,504; Sports and Outdoor 48,057; Beauty and Health 38,228. |
| Return exposure | 220,000 returned lines; implied line return rate 42.3 percent. |
| Sales channels | Webshop 197,293; Mobile App 156,075; Marketplace 83,217; Social Commerce 46,938; Outlet Online 36,477. |
| Return authorizations | 220,000 rows; major reasons include Size/Fit 68,186; Changed Mind 37,752; Color/Style 24,953; Not as Described 21,663; Late Delivery 11,525; Damaged in Transit 11,469. |
| Return exceptions | 44,240 return rows contain at least one visible exception code; 20,210 late returns; 12,292 suspected abuse flags. |
| Inspection events | 220,000 rows; Fast Lane 153,773; Standard Check 23,568; Technical Check 21,845; Refurbishment Desk 13,311; Restricted Goods 7,503. |
| Inspection outcome | Grade A 99,279; B 51,976; C 36,719; D 22,170; Scrap 9,856; 19,952 rows have queue time above seven days. |
| Refund transactions | 220,000 rows; Paid 197,540; Manual Review 12,520; Partial Refund 6,966; Rejected 2,543; Chargeback 431. |
| Refund impact | Total refund amount EUR 27.99 million; average refund lead time 4.69 days; 32,689 manual-review flags. |
| Resale disposition | 165,000 rows; Restock as New 74,468; Outlet 30,836; Liquidate 20,582; Refurbish 19,432; Vendor Return 10,435; Recycle 9,247. |
| Recovery economics | Recovery value EUR 11.37 million; value loss EUR 10.40 million; 26,225 write-off flags. |
| Capacity calendar | 3,620 rows; backlog peak 1,205 units; 677 capacity rows contain visible exception codes. |

## Embedded Teaching Signals

The generated data are designed to include visible and hidden teaching signals:

| Dataset | Intended signal |
| --- | --- |
| Sales order lines | Category mix, promotion effects, serial-returner exposure, return-rate differences, gross-margin differences. |
| Return authorizations | Return reasons, late returns, suspected abuse, missing reasons, receipt delays. |
| Inspection events | Queue delays, process-cell bottlenecks, condition grading, fast-lane opportunities, technical-check constraints. |
| Refund transactions | Instant refunds, manual review, chargebacks, refund lead time, partial refund decisions. |
| Resale disposition | Recovery value, markdowns, refurbishment costs, write-offs, value decay from delayed remarketing. |
| Capacity calendar | Planned versus actual capacity, utilization, backlog growth, overtime, temporary labor. |

## Reference Tables

`reference_tables.xlsx` contains 680 product records, 4 return-center records, 6 fulfillment-center records, 8 carrier records, 6 customer-segment records, 8 cost-parameter records, 6 policy-parameter records, 181 calendar records, and 6 assumption records. Split workbooks also include relevant reference and assumption sheets where useful.

## Notes

- Exception codes are intentionally incomplete. Blank exception cells do not mean a row is clean.
- Return performance differs structurally by category, product value, promotion type, return center, process cell, and customer segment.
- A high return rate is not necessarily the largest financial opportunity if recovery value remains high.
- Aggregate refund speed can look acceptable while specific process cells accumulate costly inspection delays.
- Students should avoid recommending a blanket policy change without segment-level evidence.
- All Excel files are below the requested 20 MB maximum file size.
