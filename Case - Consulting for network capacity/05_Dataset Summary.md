# Validation Summary

Generated on 2026-08-30 for the RheinMain CargoLink network-capacity case study.

## Workbook Checks

| Workbook | Main rows | Columns | Sheets | Size |
| --- | ---: | ---: | --- | ---: |
| `shipment_consignments_part_01_of_06.xlsx` | 80,000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9.33 MB |
| `shipment_consignments_part_02_of_06.xlsx` | 80,000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9.33 MB |
| `shipment_consignments_part_03_of_06.xlsx` | 80,000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9.33 MB |
| `shipment_consignments_part_04_of_06.xlsx` | 80,000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9.33 MB |
| `shipment_consignments_part_05_of_06.xlsx` | 80,000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9.33 MB |
| `shipment_consignments_part_06_of_06.xlsx` | 80,000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9.33 MB |
| `linehaul_movements_part_01_of_02.xlsx` | 60,000 | 17 | Linehaul_Movements, Location_Master, Lane_Master, Assumptions, Split_Info | 4.63 MB |
| `linehaul_movements_part_02_of_02.xlsx` | 60,000 | 17 | Linehaul_Movements, Location_Master, Lane_Master, Assumptions, Split_Info | 4.67 MB |
| `daily_location_capacity.xlsx` | 1,980 | 18 | Daily_Location_Capacity, Location_Master, Assumptions | 0.17 MB |
| `daily_lane_capacity.xlsx` | 5,940 | 11 | Daily_Lane_Capacity, Lane_Master, Assumptions | 0.28 MB |
| `daily_service_backlog.xlsx` | 5,940 | 15 | Daily_Service_Backlog, Location_Master, Assumptions | 0.39 MB |
| `reference_tables.xlsx` | 22 locations plus lanes, costs, and calendar | n/a | Location_Master, Lane_Master, Cost_Parameters, Calendar, Assumptions | 0.01 MB |

## Embedded Teaching Signals

| Dataset | Visible exception rows | Key operational signal | Signal volume |
| --- | ---: | --- | ---: |
| Shipment consignments | 60,244 | Missed cut-off rows | 98,265 |
| Shipment consignments | 60,244 | Late delivered consignments | 68,851 |
| Shipment consignments | 60,244 | Open backlog consignments | 9,167 |
| Linehaul movements | 21,307 | Rows with overflow | 20,828 |
| Linehaul movements | 21,307 | Average linehaul utilization | 77.6% |

## Notes

- Exception codes are intentionally incomplete. Blank exception cells do not mean a row is clean.
- Capacity bottlenecks are intentionally present and should be interpreted diagnostically.
- Service performance differs structurally by service class, location role, lane type, and operating date.
- All Excel files are below the requested 20 MB maximum file size.
