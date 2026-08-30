# Validation Summary

Generated and validated on 2026-08-30 for the Veridian Home & Living transport-tendering case study.

## Workbook Checks

The dataset contains 683,662 analytical records plus reference tables. The files are intentionally split so that every Excel workbook remains below the requested 20 MB maximum file size. The largest file is 12.97 MB.

| Workbook | Main rows | Columns | Main sheet | Size |
| --- | ---: | ---: | --- | ---: |
| `shipment_execution_part_01_of_06.xlsx` | 80,000 | 33 | Shipment_Execution | 12.97 MB |
| `shipment_execution_part_02_of_06.xlsx` | 80,000 | 33 | Shipment_Execution | 12.96 MB |
| `shipment_execution_part_03_of_06.xlsx` | 80,000 | 33 | Shipment_Execution | 12.96 MB |
| `shipment_execution_part_04_of_06.xlsx` | 80,000 | 33 | Shipment_Execution | 12.97 MB |
| `shipment_execution_part_05_of_06.xlsx` | 80,000 | 33 | Shipment_Execution | 12.96 MB |
| `shipment_execution_part_06_of_06.xlsx` | 80,000 | 33 | Shipment_Execution | 12.96 MB |
| `spot_quotes_part_01_of_02.xlsx` | 80,000 | 16 | Spot_Quotes | 5.58 MB |
| `spot_quotes_part_02_of_02.xlsx` | 60,000 | 16 | Spot_Quotes | 4.19 MB |
| `tender_bids.xlsx` | 9,887 | 19 | Tender_Bids | 0.87 MB |
| `lane_awards.xlsx` | 480 | 17 | Lane_Awards | 0.05 MB |
| `carrier_scorecards.xlsx` | 1,295 | 18 | Carrier_Scorecards | 0.14 MB |
| `claims_and_service_failures.xlsx` | 52,000 | 13 | Claims_and_Service_Failures | 3.40 MB |
| `reference_tables.xlsx` | 380 reference rows | multiple | reference sheets | 0.03 MB |

## Content Checks

| Dataset | Validated count or distribution |
| --- | --- |
| Shipment execution | 480,000 rows; Accepted 349,491; Rejected by Carrier 66,247; Brokered Spot 26,967; Missed Cutoff 20,152; Manual Override 17,143. |
| Service outcome | 365,275 shipments on time; 72,406 missed appointments; 7,106 damage-claim flags. |
| Spot exposure | 130,509 shipments used spot, brokered, missed-cutoff, or manual capacity; positive spot premium EUR 85.32 million. |
| Freight cost | Contracted baseline EUR 663.59 million; actual freight cost EUR 839.93 million. |
| CO2 performance | 203,013 shipment-level CO2 target misses; actual CO2e 125.50 million kg; shipment-level target 134.99 million kg. |
| Shipment service levels | Standard 203,820; Appointment Critical 146,098; Promotion Critical 77,784; Sustainability Critical 34,521; Express 17,777. |
| Spot quotes | 140,000 rows; Accepted 60,359; Offered 44,073; No Capacity 12,596; Declined 12,538; Expired 10,434. |
| Tender bids | 9,887 rows; Valid 9,587; Conditional 163; Excluded 81; Missing Attachment 56. |
| Lane awards | 480 rows; 120 Primary, 120 Secondary, 120 Backup, and 120 Spot Framework awards. |
| Carrier scorecards | 1,295 weekly carrier-lane-group rows; 643 rows contain at least one visible exception code. |
| Claims and service failures | 52,000 rows; Missed Appointment 29,727; Late Delivery 20,525; Damage Claim 1,622; POD Missing 126. |
| Claims impact | Total claim and service-failure amount EUR 31.23 million. |

## Embedded Teaching Signals

The generated data are designed to include visible and hidden teaching signals:

| Dataset | Intended signal |
| --- | --- |
| Shipment execution | Low tender rates, tender rejections, spot substitutions, late deliveries, missed appointments, accessorial costs, CO2 target misses. |
| Spot quotes | Spot-market premiums, quote variability, emergency desk usage, selected versus non-selected quote comparison. |
| Tender bids | Price-focused award logic, service promises, sustainability commitments, bid exclusions, conditional capacity. |
| Lane awards | Award shares, primary versus backup allocations, penalty clauses, sustainability clauses. |
| Carrier scorecards | Difference between tendered, accepted, and executed performance. |
| Claims and service failures | Customer-impact cost, root-cause ambiguity, recurring service issues. |

## Reference Tables

`reference_tables.xlsx` contains 28 carrier records, 120 lane records, 6 origin-site records, 5 customer-segment records, 7 cost-parameter records, 5 emissions-factor records, 181 calendar records, and 6 assumption records. Split workbooks also include relevant reference and assumption sheets where useful.

## Notes

- Exception codes are intentionally incomplete. Blank exception cells do not mean a row is clean.
- Carrier performance differs structurally by lane group, customer segment, service level, and peak period.
- A carrier can be attractive on one lane type and problematic on another.
- Aggregate CO2e can look acceptable while many shipment-level or lane-level targets are missed.
- Students should avoid ranking carriers by tender rate alone.
- All Excel files are below the requested 20 MB maximum file size.
