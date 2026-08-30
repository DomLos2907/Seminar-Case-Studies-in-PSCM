# Data Dictionary

The returns-management workbooks share the same teaching logic. Values are fictional and generated for teaching purposes.

## Workbook Sheets

### Sales_Order_Lines

Main order-line table.

| Field | Meaning |
| --- | --- |
| order_line_id | Unique generated sales order-line identifier. Duplicate references occur intentionally in selected rows. |
| order_id | Customer order identifier. |
| order_date | Date on which the order was placed. |
| delivery_date | Date on which the order was delivered. |
| customer_id | Customer identifier. |
| customer_segment | New, Loyal, Promo Sensitive, High Value, Serial Returner, or Marketplace Guest. |
| sales_channel | Webshop, Mobile App, Marketplace, Social Commerce, or Outlet Online. |
| promotion_type | None, Seasonal Campaign, Size Bundle, Flash Sale, Influencer Drop, or Loyalty Coupon. |
| fulfillment_center_id | Fulfillment center shipping the order. |
| product_id | Product identifier. Some rows intentionally contain missing values. |
| product_category | Apparel, Footwear, Consumer Electronics, Home Living, Sports and Outdoor, or Beauty and Health. |
| product_name | Product name. |
| size_sensitive_flag | Whether fit, size, or style uncertainty materially affects return probability. |
| seasonality_index | Relative seasonal sensitivity of the product. |
| order_qty | Ordered quantity. |
| unit_selling_price_eur | Selling price per unit. |
| gross_margin_pct | Approximate gross margin percentage before return effects. |
| outbound_shipping_cost_eur | Estimated outbound shipping cost allocated to the order line. |
| returned_flag | Whether the line generated a return authorization in the dataset. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Return_Authorizations

Return request and parcel receipt table.

| Field | Meaning |
| --- | --- |
| return_id | Unique generated return identifier. Duplicate RMA references occur intentionally in selected rows. |
| order_line_id | Related order-line identifier. |
| order_id | Related customer order identifier. |
| customer_id | Customer identifier. |
| product_id | Product identifier. |
| product_category | Product category. |
| return_created_date | Date on which the customer created the return. |
| return_reason_code | Customer-selected return reason. Some rows intentionally contain missing or vague values. |
| return_policy_window_days | Policy window in days. |
| days_after_delivery | Days between delivery and return request. |
| return_center_id | Return center receiving the parcel. |
| inbound_carrier | Carrier used for the return parcel. |
| parcel_received_date | Date on which the parcel was received by the return center. |
| label_type | Prepaid Label, QR Drop-off, Locker Return, Customer Paid, or Carrier Pickup. |
| expected_refund_due_date | Customer-facing refund promise date. |
| late_return_flag | Whether the return was created after the policy window. |
| suspected_abuse_flag | Whether customer behavior or product pattern triggered an abuse signal. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Inspection_Events

Return-center inspection and triage table.

| Field | Meaning |
| --- | --- |
| inspection_id | Unique generated inspection identifier. |
| return_id | Related return identifier. |
| return_center_id | Return center performing the inspection. |
| product_id | Product identifier. |
| product_category | Product category. |
| inspection_queue_entry_date | Date on which the parcel entered the inspection queue. |
| inspection_start_date | Date on which inspection started. |
| inspection_completed_date | Date on which inspection was completed. |
| queue_days | Days between queue entry and inspection start. |
| inspection_minutes | Processing effort in minutes. |
| inspection_cell | Fast Lane, Standard Check, Technical Check, Refurbishment Desk, or Restricted Goods. |
| initial_condition_code | Condition reported at parcel receipt. |
| final_condition_grade | A, B, C, D, or Scrap after inspection. |
| restockable_flag | Whether the item can be restocked or remarketed. |
| disposition_decision | Restock as New, Outlet, Refurbish, Liquidate, Vendor Return, Recycle, or Manual Review. |
| value_decay_days | Days from customer return creation to completed inspection. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Refund_Transactions

Refund processing table.

| Field | Meaning |
| --- | --- |
| refund_id | Unique generated refund identifier. |
| return_id | Related return identifier. |
| customer_id | Customer identifier. |
| product_id | Product identifier. |
| refund_requested_date | Date on which the refund became payable or was requested. |
| refund_paid_date | Date on which the refund was paid if recorded. |
| original_line_value_eur | Original selling value of the returned line. |
| refund_amount_eur | Refund amount paid to the customer. |
| refund_status | Paid, Pending, Manual Review, Rejected, Chargeback, or Partial Refund. |
| refund_policy_type | Instant Refund, Refund After Carrier Scan, Refund After Receipt, Refund After Inspection, or Manual Review. |
| payment_method | Card, PayPal, Klarna, Gift Card, Bank Transfer, or Marketplace Settlement. |
| manual_review_flag | Whether the refund required manual review. |
| chargeback_flag | Whether a chargeback or dispute was recorded. |
| refund_lead_time_days | Days between return creation and refund payment. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Resale_Disposition

Remarketing and disposition table.

| Field | Meaning |
| --- | --- |
| disposition_id | Unique generated disposition identifier. |
| return_id | Related return identifier. |
| product_id | Product identifier. |
| product_category | Product category. |
| return_center_id | Return center handling the disposition. |
| disposition_decision | Restock as New, Outlet, Refurbish, Liquidate, Vendor Return, Recycle, or Manual Review. |
| decision_date | Date on which the disposition decision was taken. |
| available_for_sale_date | Date on which the item became available for resale if applicable. |
| original_line_value_eur | Original selling value. |
| estimated_recovery_value_eur | Estimated resale or recovery value. |
| value_loss_eur | Difference between original value and recovery value. |
| markdown_pct | Markdown percentage versus original selling value. |
| refurbishment_cost_eur | Cost incurred for refurbishment or technical handling. |
| days_to_remarket | Days from return creation to remarketing availability. |
| resale_channel | Primary Webshop, Outlet Online, Refurbished Store, Liquidation Partner, Vendor Return, Recycle Stream, or Manual Review. |
| write_off_flag | Whether the item was written off or economically close to write-off. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Capacity_Calendar

Daily return-center capacity and backlog table.

| Field | Meaning |
| --- | --- |
| date | Operating date. |
| calendar_week | Fiscal calendar week. |
| month | Month. |
| return_center_id | Return center identifier. |
| process_cell | Fast Lane, Standard Check, Technical Check, Refurbishment Desk, or Restricted Goods. |
| planned_capacity_units | Planned daily processing capacity. |
| actual_capacity_units | Actual daily processing capacity. |
| staffing_hours | Staffing hours available. |
| inbound_returns_units | Units arriving or entering the process cell. |
| processed_units | Units processed. |
| backlog_start_units | Backlog at start of day. |
| backlog_end_units | Backlog at end of day. |
| utilization_pct | Processed units divided by actual capacity. |
| overtime_hours | Overtime used. |
| temp_labor_flag | Whether temporary labor was used. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### Product_Master

Product reference data with category, value, margin, seasonality, return propensity, inspection effort, resale decay, and restockability attributes.

### Return_Center_Master

Return-center reference data with geography, base capacity, labor flexibility, technical-check capability, and average labor cost.

### Customer_Segments

Customer-segment reference data with return propensity, service sensitivity, abuse risk, and margin relevance.

### Fulfillment_Center_Master

Outbound fulfillment center reference data.

### Carrier_Master

Inbound return carrier reference data.

### Cost_Parameters

Estimated costs for inspection labor, storage, refund handling, manual review, chargebacks, write-offs, and customer service.

### Calendar

Operating dates, weekday, fiscal week, month, campaign flags, post-holiday flags, and inbound-return multipliers.

### Assumptions

Brief explanation of the synthetic data design and intended caveats.

## Operational Event Types

| Type | Typical Interpretation | Analytical Use |
| --- | --- | --- |
| Return authorization | Customer opened a return request. | Return-rate and reason analysis. |
| Parcel received | Returned item physically arrived at a return center. | Queue and lead-time analysis. |
| Inspection completed | Item was graded and routed to a disposition path. | Capacity and process-performance analysis. |
| Refund paid | Customer received refund. | Customer experience and cash-risk analysis. |
| Restock as new | Item can be sold again at or near full value. | Fast-lane opportunity analysis. |
| Outlet, refurbish, or liquidate | Item requires markdown, work, or recovery channel. | Value-loss and process-design analysis. |

## Analytical Cautions

- A product category with the highest return rate is not automatically the largest margin problem.
- Inspection backlog should be interpreted by process cell, not only by return center.
- Fast refunds can improve customer experience while increasing abuse and cash-risk exposure.
- Delayed inspection can reduce resale value even when the physical condition is good.
- A blank exception code does not guarantee that a row is correct.
- Some records intentionally contain conflicting or incomplete operational information.
