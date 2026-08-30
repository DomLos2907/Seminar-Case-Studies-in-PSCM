# Data Dictionary

The supplier-reliability workbooks share the same teaching logic. Values are fictional and generated for teaching purposes.

## Workbook Sheets

### Purchase_Orders

Main purchase-order line table.

| Field | Meaning |
| --- | --- |
| po_line_id | Unique generated purchase order line identifier. |
| po_id | Purchase order identifier. Duplicate PO-line references occur intentionally in selected rows. |
| supplier_id | Supplier identifier. Some rows intentionally contain missing values. |
| supplier_name | Supplier name. |
| supplier_region | Supplier regional cluster. |
| plant_id | Receiving plant identifier. |
| production_line | Production line primarily affected by the material. |
| material_id | Material identifier. Some rows intentionally contain missing values. |
| material_group | Electronic Components, Machined Metal Parts, or Standard Components and Fasteners. |
| material_name | Material name. |
| criticality | Low, Medium, High, or Line Stopper. |
| order_date | Date on which the purchase order line was created. |
| requested_delivery_date | Date requested by production planning. |
| confirmed_delivery_date | Date confirmed by the supplier. Some rows intentionally contain missing values. |
| actual_delivery_date | Actual delivery date if the order was delivered. |
| order_qty | Ordered quantity. |
| received_qty | Received quantity associated with the purchase order line. |
| open_qty | Remaining open quantity. |
| uom | Unit of measure. Some rows use inconsistent values. |
| unit_price_eur | Purchase price per unit. |
| planned_lead_time_days | Planning lead time stored in the system. |
| actual_lead_time_days | Actual lead time from order to delivery. |
| delivery_status | On Time, Late, Partial, Open, Cancelled, or Quality Hold. |
| partial_delivery_flag | Whether the order line was only partially received. |
| quality_hold_flag | Whether received goods were blocked in quality inspection. |
| expedite_flag | Whether expedited transport or emergency sourcing was used. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Goods_Receipts

Goods receipt transaction table.

| Field | Meaning |
| --- | --- |
| receipt_id | Goods receipt transaction identifier. |
| po_line_id | Related purchase order line identifier. |
| supplier_id | Supplier identifier. |
| plant_id | Receiving plant identifier. |
| material_id | Material identifier. |
| receipt_date | Posting date of the receipt. |
| physical_arrival_date | Date goods physically arrived. Late postings have an earlier physical arrival date. |
| receipt_qty | Quantity posted in the receipt. |
| accepted_qty | Quantity released for use. |
| rejected_qty | Quantity rejected or blocked. |
| uom | Unit of measure. |
| quality_status | Released, Inspection, Blocked, Rework, or Rejected. |
| warehouse_location | Receiving storage or staging location. |
| posting_delay_days | Difference between physical arrival and receipt posting. |
| reference_doc | Operational reference document. Duplicate references occur intentionally. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Production_Demand

Daily material demand and production plan table.

| Field | Meaning |
| --- | --- |
| demand_id | Generated demand record identifier. |
| demand_date | Date of material requirement. |
| plant_id | Plant identifier. |
| production_line | Production line. |
| finished_good | Finished-good family. |
| material_id | Required material identifier. |
| material_group | Material group. |
| criticality | Material criticality. |
| planned_order_id | Production order or planned order identifier. |
| required_qty | Quantity required for production. |
| available_stock_qty | Stock available at planning time. |
| safety_stock_qty | Safety stock parameter stored in the system. |
| reorder_point_qty | Reorder point parameter stored in the system. |
| planned_lead_time_days | Planning lead time stored in the system. |
| shortage_qty | Requirement quantity not covered by available stock. |
| production_risk_flag | Whether the demand record indicates production risk. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Shortage_Events

Material shortage and production disruption event table.

| Field | Meaning |
| --- | --- |
| shortage_event_id | Generated shortage event identifier. |
| event_date | Date on which the shortage was recorded. |
| plant_id | Plant identifier. |
| production_line | Affected production line. |
| material_id | Material identifier. |
| material_group | Material group. |
| supplier_id | Primary supplier linked to the shortage. |
| shortage_qty | Missing material quantity. |
| impacted_production_orders | Number of affected production orders. |
| lost_output_units | Estimated lost finished-good output. |
| downtime_hours | Estimated production downtime. |
| root_cause_code | Supplier Delay, Partial Delivery, Quality Hold, Planning Parameter, Demand Spike, Master Data, or Unknown. |
| escalation_level | None, Buyer, Plant Manager, Executive, or Customer Alert. |
| resolved_date | Date on which the shortage was resolved. |
| status | Open, Resolved, or Data Review. |
| estimated_cost_eur | Estimated shortage cost. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Expedite_Shipments

Premium freight and emergency sourcing records.

| Field | Meaning |
| --- | --- |
| expedite_id | Generated expedite record identifier. |
| request_date | Date of expedite request. |
| supplier_id | Supplier identifier. |
| plant_id | Receiving plant identifier. |
| material_id | Material identifier. |
| linked_po_line_id | Related purchase order line identifier if available. |
| expedite_reason | Reason for expedite action. |
| transport_mode | Air, Express Truck, Dedicated Van, Courier, or Emergency Supplier Pickup. |
| expedited_qty | Quantity expedited. |
| expedite_cost_eur | Incremental expedite cost. |
| days_saved | Estimated days saved versus normal delivery. |
| avoided_downtime_hours | Estimated downtime avoided. |
| approval_level | Buyer, Purchasing Manager, Plant Manager, or Executive. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Supplier_Master

Supplier reference data.

| Field | Meaning |
| --- | --- |
| supplier_id | Supplier identifier. |
| supplier_name | Supplier name. |
| supplier_region | Regional cluster. |
| supplier_tier | Strategic, Preferred, Approved, or Tactical. |
| risk_class | Low, Medium, High, or Critical. |
| baseline_otd_rate | Approximate baseline on-time delivery performance. |
| confirmation_reliability | Approximate reliability of confirmed dates. |
| quality_risk | Relative quality risk indicator. |
| financial_risk | Relative financial risk indicator. |
| primary_material_group | Main supplied material group. |

### Material_Master

Material reference data.

| Field | Meaning |
| --- | --- |
| material_id | Material identifier. |
| material_group | Material group. |
| material_name | Material name. |
| criticality | Low, Medium, High, or Line Stopper. |
| base_uom | Standard unit of measure. |
| unit_price_eur | Purchase price estimate. |
| planned_lead_time_days | Planning lead time stored in the system. |
| safety_stock_qty | Safety stock parameter. |
| reorder_point_qty | Reorder point parameter. |
| single_source_flag | Whether the material is single-sourced. |
| primary_supplier_id | Primary supplier. |

### Plant_Master

Plant and production-line reference data.

### Cost_Parameters

Estimated costs for downtime, lost output, expedite transport, quality holds, inventory carrying cost, and supplier development.

### Calendar

Operating dates, weekday, fiscal week, month, shutdown proximity, peak flags, and demand multipliers.

### Assumptions

Brief explanation of the synthetic data design and intended caveats.

## Operational Event Types

| Type | Typical Interpretation | Analytical Use |
| --- | --- | --- |
| On Time purchase order | Delivered on or before confirmed or requested date, depending on the metric definition. | Supplier reliability baseline. |
| Late purchase order | Delivered after requested or confirmed date. | Delivery reliability analysis. |
| Partial delivery | Received quantity is lower than ordered quantity. | Coverage and shortage-risk diagnostic. |
| Quality hold | Material physically arrived but is not released for production. | Effective availability diagnostic. |
| Shortage event | Production demand could not be covered by available usable material. | Production impact analysis. |
| Expedite shipment | Premium transport or emergency sourcing was used. | Cost and mitigation analysis. |

## Analytical Cautions

- A supplier with many late lines is not automatically the worst supplier if it also handles the highest volume and lowest criticality.
- A blank exception code does not guarantee that a row is correct.
- Physical arrival and posting date can differ, which may distort daily availability.
- Quality holds can create shortages even when supplier delivery appears on time.
- Lead-time comparisons should distinguish requested, confirmed, planned, and actual lead time.
- Increasing safety stock everywhere may reduce shortages but can create excessive working capital.
