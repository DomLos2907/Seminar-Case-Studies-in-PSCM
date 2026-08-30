# Data Dictionary

The network-capacity workbooks share the same teaching logic. Values are fictional and generated for teaching purposes.

## Workbook Sheets

### Shipments

Main shipment-level consignment table.

| Field | Meaning |
| --- | --- |
| consignment_id | Shipment identifier. Duplicate values occur intentionally in selected rows. |
| booking_date | Date on which the consignment was booked. |
| pickup_date | Planned or actual pickup date. |
| origin_depot | Origin depot identifier. |
| destination_depot | Destination depot identifier. Some rows intentionally contain missing values. |
| planned_hub | Hub planned for consolidation or cross-dock movement. |
| actual_hub | Hub used operationally. Some rows intentionally contain missing values or diversions. |
| service_class | Premium, Standard, or Economy. Some rows intentionally use inconsistent labels. |
| customer_segment | Customer segment assigned to the consignment. |
| product_group | General cargo freight category. |
| handling_units | Number of physical handling units in the consignment. |
| weight_kg | Shipment weight in kilograms. Some rows contain outliers. |
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
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Linehaul_Movements

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
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Daily_Location_Capacity

Daily site-level capacity and workload table.

| Field | Meaning |
| --- | --- |
| date | Operating date. |
| location_id | Depot or hub identifier. |
| location_name | Location name. |
| location_type | Depot, Hub, or Satellite Depot. |
| region | German regional cluster. |
| inbound_capacity_hu | Daily inbound handling capacity in handling units. Some rows intentionally contain missing values. |
| outbound_capacity_hu | Daily outbound handling capacity in handling units. Some rows intentionally contain missing values. |
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

### Daily_Lane_Capacity

Daily lane-level capacity table.

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

### Daily_Service_Backlog

Daily aggregated service and backlog table.

| Field | Meaning |
| --- | --- |
| date | Operating date. |
| location_id | Depot or hub identifier. |
| location_type | Depot, Hub, or Satellite Depot. |
| region | German regional cluster. |
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

### Location_Master

Location reference data for the network.

| Field | Meaning |
| --- | --- |
| location_id | Depot or hub identifier. |
| location_name | Location name. |
| location_type | Depot, Hub, or Satellite Depot. |
| region | Regional cluster. |
| base_inbound_hu | Baseline inbound handling capacity. |
| base_outbound_hu | Baseline outbound handling capacity. |
| dock_door_capacity_hu | Baseline dock-door throughput capacity. |
| yard_capacity_trailers | Baseline yard capacity. |
| network_role | Role of the location in the network. |
| reliability_score | Relative operational reliability indicator. |
| cost_index | Relative local cost indicator. |
| assigned_hub | Hub normally assigned to the depot. |

### Lane_Master

Lane reference data for the network.

| Field | Meaning |
| --- | --- |
| lane_id | Lane identifier. |
| origin_location | Origin depot or hub. |
| destination_location | Destination depot or hub. |
| lane_type | Depot-Hub, Hub-Depot, Hub-Hub, or Direct Regional. |
| distance_km | Approximate lane distance. |
| default_capacity_hu | Typical handling-unit capacity per scheduled departure pattern. |
| planned_departures_per_day | Planned number of departures per day. |
| strategic_relevance | Core, critical, or flexible relationship. |

### Cost_Parameters

Estimated costs for temporary handling capacity, overtime, spot linehaul, yard rental, late-service penalties, and missed cut-off administration.

### Calendar

Operating dates, weekday, fiscal week, peak flags, holiday proximity, and demand multipliers.

### Assumptions

Brief explanation of the synthetic data design and intended caveats.

## Operational Event Types

| Type | Typical Interpretation | Analytical Use |
| --- | --- | --- |
| Delivered shipment | Consignment delivered on or before promise, unless data quality suggests otherwise. | Baseline service performance. |
| Late delivered shipment | Consignment delivered after promised date. | Service failure analysis. |
| Backlog shipment | Consignment not yet delivered within the extract. | Backlog accumulation and capacity pressure. |
| Missed cut-off | Freight was ready after planned origin cut-off. | Timing and depot-process diagnostic. |
| Linehaul overflow | Booked or loaded handling units exceed available lane capacity. | Lane-capacity diagnostic. |
| Capacity exception | Location or lane record with overload, missing capacity, weather disruption, or yard congestion. | Data-quality and operational-risk diagnostic. |

## Analytical Cautions

- Utilization above 100 percent may indicate overflow, temporary capacity, or data issues.
- A blank exception code does not guarantee that a row is correct.
- Missing capacity values should not automatically be interpreted as zero capacity.
- High depot utilization is not necessarily the root cause if upstream linehaul or hub congestion created the workload spike.
- Service failures can originate at a different location from where they are observed.
- Premium freight should be evaluated separately from standard and economy freight.
