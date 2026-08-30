# Data Dictionary

The transport-tendering workbooks share the same teaching logic. Values are fictional and generated for teaching purposes.

## Workbook Sheets

### Shipment_Execution

Main executed-shipment table.

| Field | Meaning |
| --- | --- |
| shipment_id | Unique generated shipment identifier. Duplicate references occur intentionally in selected rows. |
| shipment_date | Date on which the shipment was released to transport planning. |
| calendar_week | Fiscal calendar week. |
| month | Shipment month. |
| lane_id | Transport lane identifier. Some rows intentionally contain inconsistent values. |
| origin_site_id | Origin plant or distribution center. |
| destination_region | Destination customer or regional cluster. |
| customer_segment | Retail, E-Commerce, Wholesale, Export Distributor, or Internal Replenishment. |
| product_category | Product category transported on the shipment. |
| service_level | Standard, Appointment Critical, Promotion Critical, Express, or Sustainability Critical. |
| planned_carrier_id | Contracted carrier initially tendered. |
| actual_carrier_id | Carrier that executed the shipment. This may differ from the planned carrier. |
| awarded_rank | Award rank of the planned carrier on the lane. |
| tender_status | Accepted, Rejected by Carrier, Missed Cutoff, Brokered Spot, or Manual Override. |
| transport_mode | Road FTL, Road LTL, Intermodal Rail/Road, Express Van, or Dedicated Truck. |
| pallets | Number of pallets. |
| weight_kg | Shipment weight in kilograms. |
| volume_m3 | Shipment volume in cubic meters. |
| contracted_rate_eur | Contracted freight rate for the planned carrier and lane. |
| actual_freight_cost_eur | Actual paid freight cost. |
| spot_premium_eur | Difference between actual cost and contracted cost when spot or premium capacity was used. |
| fuel_surcharge_eur | Fuel surcharge applied to the shipment. |
| accessorial_cost_eur | Waiting time, appointment, toll, handling, or documentation surcharge. |
| planned_delivery_date | Date expected by transport planning. |
| actual_delivery_date | Actual delivery date if recorded. Some rows intentionally contain missing values. |
| delay_hours | Delivery delay in hours versus plan. |
| on_time_flag | Whether the shipment met the delivery commitment. |
| appointment_missed_flag | Whether the delivery appointment was missed. |
| damage_claim_flag | Whether a transport damage claim was recorded. |
| co2e_kg | Estimated transport CO2e in kilograms. |
| co2_target_kg | Shipment-level CO2e target. |
| co2_target_missed_flag | Whether estimated CO2e exceeded the target. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Spot_Quotes

Spot-market quote records linked to tender failures, urgent demand, or manual spot purchases.

| Field | Meaning |
| --- | --- |
| spot_quote_id | Unique generated spot quote identifier. |
| shipment_id | Related shipment identifier if available. |
| quote_request_date | Date on which the spot quote was requested. |
| lane_id | Transport lane identifier. |
| pickup_date | Planned pickup date for the shipment. |
| rejected_contract_carrier_id | Contracted carrier that rejected or failed the tender if known. |
| quote_carrier_id | Carrier providing the spot quote. |
| selected_flag | Whether this quote was selected. |
| quoted_rate_eur | Quoted spot freight rate. |
| market_index | Relative spot-market price index. |
| expected_transit_days | Expected transit time quoted by the carrier. |
| estimated_co2e_kg | Estimated CO2e for the quoted transport. |
| acceptance_status | Offered, Accepted, Declined, Expired, or No Capacity. |
| quote_rank_by_price | Price rank within the quote set where available. |
| quote_source | TMS, Broker Portal, Manual Email, or Emergency Desk. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Tender_Bids

Carrier tender bids by lane and tender round.

| Field | Meaning |
| --- | --- |
| tender_id | Tender process identifier. |
| tender_round | Annual Tender, Mini Tender 1, Mini Tender 2, or Emergency Rebid. |
| bid_date | Date of bid submission. |
| lane_id | Transport lane identifier. |
| carrier_id | Carrier identifier. |
| offered_rate_eur | Offered linehaul rate. |
| fuel_surcharge_pct | Offered fuel surcharge percentage. |
| capacity_commitment_shipments_per_week | Weekly capacity commitment. |
| committed_acceptance_pct | Carrier's committed tender acceptance rate. |
| committed_otd_pct | Carrier's committed on-time delivery rate. |
| committed_co2e_kg_per_ton_km | Carrier's committed emissions intensity. |
| offered_mode | Main mode offered by the carrier. |
| incumbent_flag | Whether the carrier was incumbent on the lane. |
| bid_rank_by_rate | Rate rank within the lane and tender round. |
| commercial_score | Tender score for price competitiveness. |
| service_score | Tender score for service promise and history. |
| sustainability_score | Tender score for emissions and equipment profile. |
| bid_status | Valid, Conditional, Excluded, or Missing Attachment. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Lane_Awards

Tender award and allocation table.

| Field | Meaning |
| --- | --- |
| award_id | Generated award line identifier. |
| tender_id | Related tender process identifier. |
| lane_id | Transport lane identifier. |
| carrier_id | Awarded carrier identifier. |
| award_rank | Primary, Secondary, Backup, or Spot Framework. |
| awarded_share_pct | Planned share of lane volume awarded to the carrier. |
| contracted_rate_eur | Contracted freight rate. |
| committed_capacity_per_week | Weekly capacity committed by the carrier. |
| target_acceptance_pct | Tender acceptance target. |
| target_otd_pct | On-time delivery target. |
| target_co2e_kg_per_ton_km | Emissions intensity target. |
| contract_type | Fixed Rate, Indexed Fuel, Capacity Block, or Spot Framework. |
| penalty_clause | None, Service Credit, Rejection Penalty, CO2 Bonus Malus, or Customer Penalty Pass-Through. |
| sustainability_clause_flag | Whether the contract includes a sustainability clause. |
| effective_from | Contract start date. |
| effective_to | Contract end date. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Carrier_Scorecards

Weekly carrier scorecard table by carrier and lane group.

| Field | Meaning |
| --- | --- |
| scorecard_week | Fiscal week. |
| carrier_id | Carrier identifier. |
| lane_group | Lane group. |
| tendered_shipments | Number of shipments tendered to the carrier. |
| accepted_shipments | Number of tendered shipments accepted. |
| rejected_shipments | Number of tendered shipments rejected or missed. |
| tender_acceptance_rate | Accepted shipments divided by tendered shipments. |
| on_time_rate | Share of executed shipments delivered on time. |
| avg_delay_hours | Average delay hours. |
| missed_appointments | Count of missed appointment shipments. |
| claims_count | Count of damage or service claims. |
| contracted_cost_eur | Contracted cost baseline for the tendered shipments. |
| actual_cost_eur | Actual paid cost for shipments associated with the carrier. |
| spot_substitution_cost_eur | Spot or premium cost attributed to tender failures. |
| co2e_kg | Estimated actual CO2e. |
| co2_target_kg | CO2e target. |
| co2_target_met_flag | Whether the weekly scorecard met the emissions target. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Claims_and_Service_Failures

Service-failure and claims records.

| Field | Meaning |
| --- | --- |
| case_id | Generated case identifier. |
| shipment_id | Related shipment identifier. |
| failure_date | Date on which the failure was recorded. |
| lane_id | Transport lane identifier. |
| carrier_id | Carrier identifier. |
| customer_segment | Customer segment affected by the failure. |
| failure_type | Late Delivery, Missed Appointment, Damage Claim, Wrong Equipment, POD Missing, or Customer Escalation. |
| severity | Low, Medium, High, or Critical. |
| delay_hours | Delay hours associated with the failure if relevant. |
| claim_amount_eur | Claimed or estimated cost. |
| root_cause_code | Carrier Capacity, Dispatch Error, Traffic, Warehouse Delay, Documentation, Customer Slot, Damage Handling, or Unknown. |
| corrective_action_status | Open, Under Review, Closed, Disputed, or Recurring Issue. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Carrier_Master

Carrier reference data.

| Field | Meaning |
| --- | --- |
| carrier_id | Carrier identifier. |
| carrier_name | Carrier name. |
| carrier_type | Low-cost Road, Balanced Road, Premium Road, Intermodal Specialist, or Regional Niche. |
| home_region | Carrier home region. |
| rate_index | Relative rate competitiveness. Lower values indicate cheaper carriers. |
| service_index | Relative service reliability. |
| acceptance_index | Relative tender acceptance reliability. |
| co2_index | Relative emissions intensity. Lower values indicate lower emissions. |
| fleet_euro6_share | Share of Euro 6 or equivalent fleet. |
| alternative_fuel_share | Share of alternative fuel, electric, or intermodal-capable equipment. |
| capacity_tightness | Relative capacity constraint indicator. |
| sustainability_score | Carrier sustainability score. |

### Lane_Master

Lane reference data with origin, destination, lane group, distance, complexity, baseline cost, volume, and CO2 target attributes.

### Site_Master

Origin site reference data.

### Customer_Segments

Customer-segment service sensitivity and penalty assumptions.

### Cost_Parameters

Estimated costs for spot premiums, missed appointments, customer penalties, claims, CO2 deviations, and tender administration.

### Emissions_Factors

Mode-level emissions assumptions used for synthetic CO2 calculations.

### Calendar

Operating dates, weekday, fiscal week, month, peak flags, month-end flags, promotion-window flags, and demand multipliers.

### Assumptions

Brief explanation of the synthetic data design and intended caveats.

## Operational Event Types

| Type | Typical Interpretation | Analytical Use |
| --- | --- | --- |
| Accepted tender | Contracted carrier accepted the tender and executed the shipment. | Baseline carrier performance. |
| Rejected tender | Contracted carrier did not accept the tender. | Tender-waterfall and capacity-risk analysis. |
| Brokered spot | Shipment was moved through spot market or broker capacity. | Hidden cost and resilience diagnostic. |
| Late delivery | Shipment missed the committed delivery date or appointment. | Service-performance analysis. |
| Missed appointment | Delivery missed a strict unloading slot. | Customer-impact analysis. |
| CO2 target miss | Shipment emissions exceeded target. | Sustainability trade-off analysis. |

## Analytical Cautions

- A low-rate carrier is not automatically a poor carrier if it performs well on the right lane type.
- A high on-time rate can hide frequent tender rejections if only executed shipments are considered.
- Spot-market spend should be linked back to the rejected or failed contract carrier where possible.
- CO2 comparisons should control for distance, shipment weight, mode, and lane type.
- A blank exception code does not guarantee that a row is correct.
- Some records intentionally contain conflicting or incomplete operational information.
