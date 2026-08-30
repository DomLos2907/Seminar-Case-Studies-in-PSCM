# Dataset Summary

Generated synthetic data for the case study **Network Capacity in General Cargo Logistics**.

## Design Overview

The dataset represents a three-month operating window in a fictional German general cargo network. It includes shipment flows, site capacities, linehaul movements, lane capacities, backlog, service performance, and reference data. It is intentionally realistic but not confidential.

The case excludes order picking. Capacity is represented through depots, hubs, dock doors, yards, handling throughput, and linehaul movements.

## Generated Files

| File group | Description |
| --- | --- |
| `shipment_consignments_part_01_of_06.xlsx` through `shipment_consignments_part_06_of_06.xlsx` | Shipment-level consignment data, split into GitHub-friendly parts. |
| `linehaul_movements_part_01_of_02.xlsx` through `linehaul_movements_part_02_of_02.xlsx` | Scheduled and executed linehaul movements. |
| `daily_location_capacity.xlsx` | Location-day capacity and workload records. |
| `daily_lane_capacity.xlsx` | Lane-day planned and actual capacity records. |
| `daily_service_backlog.xlsx` | Location-day-service backlog and service performance. |
| `reference_tables.xlsx` | Location master, lane master, cost parameters, and calendar. |

## Validation Summary

| Dataset | Files | Main rows | Largest file |
| --- | ---: | ---: | ---: |
| Shipment consignments | 6 | 480,000 | 9.33 MB |
| Linehaul movements | 2 | 120,000 | 4.67 MB |
| Daily location capacity | 1 | 1,980 | 0.17 MB |
| Daily lane capacity | 1 | 5,940 | 0.28 MB |
| Daily service and backlog | 1 | 5,940 | 0.39 MB |
| Reference tables | 1 | 22 locations plus lanes, cost parameters, and calendar | 0.01 MB |

## Embedded Teaching Signals

The synthetic data intentionally include:

- uneven regional demand growth;
- weekday peaks and selected quarter-end pressure;
- overloaded hub and depot days;
- linehaul capacity shortages on selected lanes;
- missed cut-off events;
- backlog accumulation and release patterns;
- service-class trade-offs;
- capacity records with missing values;
- duplicate consignment IDs;
- inconsistent service-class labels;
- outlier weights and volumes;
- visible exception codes that are intentionally incomplete.

Observed validation signals:

| Signal | Value |
| --- | ---: |
| Shipment rows | 480,000 |
| Delivered consignments | 401,015 |
| Late delivered consignments | 68,851 |
| Open backlog consignments | 9,167 |
| Cancelled consignments | 967 |
| Shipment rows with visible exception code | 60,244 |
| Shipments missing cut-off | 98,265 |
| Linehaul movement rows | 120,000 |
| Linehaul rows with overflow | 20,828 |
| Linehaul rows with visible exception code | 21,307 |
| Average linehaul utilization | 77.6% |
| Maximum XLSX file size | 9.33 MB |

## Student Challenge

Students should not search for a single highest-utilization location and stop there. The central challenge is to identify which bottlenecks matter for service and which intervention is most defensible under budget, timing, and operational constraints.

## Validation

The generated workbooks were checked for row counts, maximum file size below 20 MB, expected sheet presence, plausible capacity-utilization distributions, visible data-quality issues, and absence of order-picking fields.
