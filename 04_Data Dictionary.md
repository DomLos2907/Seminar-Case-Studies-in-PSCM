# Data Dictionary

The workbooks are fictional and generated for teaching purposes. They represent a general cargo transport network with depots, hubs, shipment flows, linehaul movements, location capacities, lane capacities, backlog, and service performance.

## Workbook: Shipment Consignments

Main shipment-level table split across multiple XLSX files.

| Field | Meaning |
| --- | --- |
| consignment_id | Shipment identifier. Duplicate values occur intentionally in selected rows. |
| booking_date | Date on which the consignment was booked. |
| pickup_date | Planned or actual pickup date. |
| origin_depot | Origin depot identifier. |
| destination_depot | Destination depot identifier. |
| planned_hub | Hub planned for consolidation or cross-dock movement. |
| actual_hub | Hub used operationally; may be missing or different from planned hub. |
| service_class | Premium, Standard, or Economy. Some rows intentionally use inconsistent labels. |
| customer_segment | Industrial, Wholesale, E-commerce B2B, Automotive Supplier, Healthcare Supply, or Regional Distributor. |
| product_group | General cargo freight category. |
| handling_units | Number of physical handling units in the consignment. |
| weight_kg | Shipment weight in kilograms. |
| volume_cbm | Shipment volume in cubic meters. |
| chargeable_weight_kg | Commercial chargeable weight. |
| planned_cutoff_time | Cut-off time at origin depot. |
| actual_ready_time | Time at which freight was ready for outbound processing. |
| missed_cutoff | Whether the consignment missed the planned cut-off. |
| promised_delivery_date | Customer-promised delivery date. |
| actual_delivery_date | Actual delivery date, if delivered. |
| transit_days | Actual transit days. |
| on_time | Whether the consignment was delivered on or before promised date. |
| shipment_status | Delivered, Late Delivered, Backlog, Cancelled, or Data Review. |
| revenue_eur | Shipment revenue estimate. |
| handling_cost_eur | Handling cost estimate. |
| linehaul_cost_eur | Linehaul cost estimate. |
| exception_code | Visible anomaly or operational exception. Blank does not guarantee clean data. |

## Workbook: Linehaul Movements

Scheduled and executed long-distance movements between depots and hubs.

| Field | Meaning |
| --- | --- |
| movement_id | Linehaul movement identifier. |
| departure_date | Planned departure date. |
| origin_location | Origin depot or hub. |
| destination_location | Destination depot or hub. |
| lane_id | Lane identifier. |
| planned_departure_time | Scheduled departure time. |
| actual_departure_time | Actual departure time. |
| planned_capacity_hu | Planned capacity in handling units. |
| actual_capacity_hu | Actual available capacity in handling units. |
| loaded_hu | Loaded handling units. |
| utilization | Loaded handling units divided by actual capacity. |
| overflow_hu | Handling units not loaded due to capacity or cut-off issue. |
| carrier_type | Own fleet, contracted carrier, spot carrier, or subcontractor. |
| delay_reason | Operational reason for delayed departure, if applicable. |
| movement_status | On Time, Delayed, Cancelled, or Capacity Exception. |
| cost_eur | Estimated movement cost. |
| exception_code | Visible data or operational anomaly. |

## Workbook: Daily Location Capacity

Daily site-level capacity and actual workload.

| Field | Meaning |
| --- | --- |
| date | Operating date. |
| location_id | Depot or hub identifier. |
| location_type | Depot, Hub, or Satellite Depot. |
| region | Regional cluster. |
| inbound_capacity_hu | Daily inbound handling capacity in handling units. |
| outbound_capacity_hu | Daily outbound handling capacity in handling units. |
| dock_door_capacity_hu | Practical dock-door throughput capacity. |
| yard_capacity_trailers | Practical yard capacity in trailers or swap bodies. |
| planned_inbound_hu | Planned inbound handling units. |
| actual_inbound_hu | Actual inbound handling units. |
| planned_outbound_hu | Planned outbound handling units. |
| actual_outbound_hu | Actual outbound handling units. |
| yard_peak_trailers | Maximum observed yard occupancy. |
| overtime_hours | Overtime used at the location. |
| temp_capacity_hu | Temporary handling capacity added that day. |
| weather_disruption | Weather or external disruption flag. |
| capacity_exception | Capacity-related exception label. |

## Workbook: Daily Lane Capacity

Daily lane capacity by scheduled relationship.

| Field | Meaning |
| --- | --- |
| date | Operating date. |
| lane_id | Lane identifier. |
| origin_location | Origin depot or hub. |
| destination_location | Destination depot or hub. |
| planned_capacity_hu | Planned lane capacity in handling units. |
| actual_capacity_hu | Actual lane capacity after cancellations or spot capacity. |
| booked_hu | Handling units assigned to the lane. |
| overflow_hu | Handling units not transported as planned. |
| utilization | Booked handling units divided by actual capacity. |
| added_spot_capacity_hu | Temporary spot capacity bought that day. |
| lane_exception | Capacity or execution exception. |

## Workbook: Daily Service and Backlog

Daily aggregated performance by location and service class.

| Field | Meaning |
| --- | --- |
| date | Operating date. |
| location_id | Depot or hub identifier. |
| service_class | Premium, Standard, or Economy. |
| consignments_received | Consignments entering the location or lane control point. |
| handling_units_received | Handling units received. |
| consignments_delivered_on_time | Consignments delivered on or before promise. |
| consignments_late | Late consignments. |
| backlog_opening_hu | Backlog at start of day. |
| backlog_added_hu | New backlog added during day. |
| backlog_released_hu | Backlog cleared during day. |
| backlog_closing_hu | Backlog at end of day. |
| service_level | On-time consignments divided by consignments received. |
| root_cause_hint | Dominant operational hint for that location-day-service combination. |

## Reference Workbooks

### Location Master

Location attributes, region, type, baseline capacity, and operational risk indicators.

### Lane Master

Lane definitions, distance, transit type, default capacity, planned route pattern, and strategic relevance.

### Cost Parameters

Estimated costs for temporary labor, spot linehaul, overtime, missed premium service, late standard service, late economy service, and yard rental.

### Calendar

Operating dates, weekday, fiscal week, peak flags, holiday proximity, and demand multipliers.

## Analytical Cautions

- Utilization above 100 percent may indicate overflow, temporary capacity, or data issues.
- Missing capacity values should not automatically be interpreted as zero capacity.
- High depot utilization is not necessarily the root cause if upstream linehaul or hub congestion created the workload spike.
- Service failures can originate at a different location from where they are observed.
- Premium freight should be evaluated separately from economy freight.
- Blank exception cells do not mean clean data.
