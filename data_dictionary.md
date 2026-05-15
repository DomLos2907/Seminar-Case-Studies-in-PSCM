# Data Dictionary

The three transaction workbooks share the same structure. Values are fictional and generated for teaching purposes.

## Workbook Sheets

### Transactions

Main transaction-level inventory movement table.

| Field | Meaning |
| --- | --- |
| transaction_id | Unique generated movement identifier. |
| assortment | Frozen Food, Fresh Produce, or Bake-off Bakery. |
| store_id | Store identifier. Some rows intentionally contain missing values. |
| store_format | Urban, Suburban, Commuter, or Neighborhood. |
| region | German regional cluster. |
| transaction_date | Posting date in the inventory system. |
| document_date | Operational document date. Late postings have a document date before transaction_date. |
| fiscal_week | Week number within the analysis horizon. |
| sku_id | Product identifier. Some rows intentionally contain missing values. |
| warengruppe | Merchandise group. |
| item_name | Product name. |
| demand_profile | Demand pattern assigned to the SKU. |
| shelf_life_days | Typical commercial shelf life in days. |
| units_per_case | Number of selling units per case. |
| transaction_type | Inventory movement type. |
| movement_direction | Inbound, Outbound, Neutral, or Adjustment. |
| quantity_units | Signed movement quantity in selling units. |
| quantity_cases_equiv | Movement quantity expressed in case equivalents. |
| book_stock_units_before | Book stock before the movement. |
| book_stock_units_after | Book stock after the movement. |
| book_stock_cases_after | Book stock after the movement in case equivalents. |
| observed_count_units | Physical count value for count-related rows; blank otherwise. |
| unit_cost_eur | Internal unit cost estimate. |
| retail_price_eur | Selling price estimate. |
| waste_reason | Waste or shrink reason, where applicable. |
| source_system | Source subsystem or process channel. |
| reference_doc | Operational reference number. Duplicate references occur intentionally. |
| exception_code | System hint for selected anomalies. Blank does not mean clean. |

### SKU_Master

Product reference data for the assortment.

| Field | Meaning |
| --- | --- |
| sku_id | Product identifier. |
| assortment | Product assortment. |
| warengruppe | Merchandise group. |
| item_name | Product name. |
| demand_profile | Assigned demand pattern. |
| shelf_life_days | Typical shelf life. |
| units_per_case | Standard pack size. |
| unit_cost_eur | Internal unit cost estimate. |
| retail_price_eur | Selling price estimate. |
| expected_waste_rate | Approximate structural waste expectation. |
| replenishment_frequency | Typical replenishment rhythm. |

### Store_Master

Store reference data.

| Field | Meaning |
| --- | --- |
| store_id | Store identifier. |
| store_format | Store type. |
| region | Regional cluster. |
| sales_area_sqm | Approximate sales area. |
| cold_chain_risk | Relative operational risk indicator. |
| inventory_discipline | Relative process-discipline indicator. |

### Assumptions

Brief explanation of the synthetic data design and intended caveats.

## Transaction Types

| Type | Typical Direction | Interpretation |
| --- | --- | --- |
| SALE | Outbound | Customer sales movement. |
| GOODS_RECEIPT | Inbound | Store delivery from distribution center or supplier. |
| TRANSFER_IN | Inbound | Transfer received from another store. |
| TRANSFER_OUT | Outbound | Transfer sent to another store. |
| WASTE | Outbound | Known spoilage or write-off. |
| SHRINKAGE | Outbound | Loss, damage, theft, or unclassified shrink. |
| COUNT_ADJUSTMENT | Adjustment | Difference between book stock and physical count. |
| CORRECTION | Adjustment | Manual correction of a prior booking error. |
| MARKDOWN | Neutral | Price reduction signal; quantity usually zero. |
| THAW_TO_SHELF | Inbound | Bakery-specific movement from frozen/chilled backroom stock to fresh shelf stock. |

## Analytical Cautions

- Negative book stock is a signal, not automatically proof of theft or waste.
- A blank exception code does not guarantee that a row is correct.
- Late postings can make daily waste and sales reconciliation misleading.
- Case-equivalent quantities should be checked against units per case.
- Waste comparisons across assortments require normalization by sales, shelf life, and structural perishability.
- Count adjustments may reveal inventory inaccuracy but can also reflect delayed postings or earlier unrecorded waste.
