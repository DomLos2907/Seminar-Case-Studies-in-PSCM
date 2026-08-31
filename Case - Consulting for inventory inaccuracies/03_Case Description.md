# Case Study: Cold Chains, Warm Shelves

## Norda Market's Inventory Problem

On a wet Monday morning in April, Norda Market's Chief Operations Officer, Matthias Hillmann, stood in the back room of store 047 in Dortmund and looked at two versions of the same truth.

The store system said that the store had 42 units of frozen spinach in stock. The freezer cabinet held 18. The produce table looked worse. The system showed 31 mango packs, but the department manager counted 7 sellable packs and 11 damaged ones that had not yet been written off. At the bake-off counter, yesterday's thawed pastries had been thrown away before closing, but the waste booking had been entered only as a generic department adjustment.

Norda Market was not facing a single data problem. It was facing three operational problems that happened to be visible in the same inventory system.

Frozen food moved through a disciplined cold-chain process and had long shelf lives. Waste was low, but pack-size conversions and transfer bookings between stores occasionally distorted stock balances. Fresh produce had short shelf lives, irregular demand, and visible quality decay. Waste rates were high, but the line between true demand volatility, poor ordering, and weak stock discipline was unclear. Bake-off bakery created an additional complication: products were delivered frozen or chilled, thawed and baked in store, then sold as fresh items with a sell-by horizon of hours rather than weeks.

The executive board wanted a practical answer within four weeks. The company did not ask for a perfect academic model. It asked for a management recommendation that could be defended under questioning.

## Company Background

Norda Market is a fictional German food retailer with 60 supermarkets in urban, suburban, and commuter locations. The company positions itself between discounters and premium supermarkets: it competes on availability, freshness, and local convenience, while keeping prices close enough to prevent customer switching.

The three assortments in scope are operationally distinct:

### Frozen Food

Frozen food includes pizza, vegetables, ice cream, fish, ready meals, and frozen desserts. Demand is relatively stable, with stronger weekend demand and occasional promotion spikes. Product shelf lives are long, usually several months. Waste should therefore be low. When losses occur, they are often related to freezer incidents, incorrect transfer postings, miscounted cases, or pack-size errors between case units and single units.

Frozen products are replenished two to three times per week from a regional distribution center. Store teams receive goods in cases and sell in consumer units. The ERP system records both unit quantities and case-equivalent quantities. Operations managers suspect that some inventory inaccuracies come from case-to-unit conversion mistakes.

### Fresh Produce

Produce includes apples, bananas, berries, salads, tomatoes, peppers, herbs, potatoes, and seasonal fruit. Demand is volatile and weather-sensitive. Shelf life varies by item, typically from two to ten days. Waste occurs through visible spoilage, damage, quality downgrades, trimming, and unsold stock.

Produce receives daily deliveries. Store managers influence order quantities, especially for promotional and weather-sensitive products. The category team has historically tolerated higher waste if shelf presentation remains abundant. Finance now questions whether some stores are carrying too much inventory in slow-moving produce lines.

### Bake-off Bakery

Bake-off bakery includes croissants, rolls, baguettes, pretzels, sweet pastries, and filled snacks. Many items arrive frozen or chilled, are thawed and baked in store, and then sold from a fresh counter. Once thawed or baked, commercial shelf life is short. End-of-day waste is expected, but the company believes some waste is avoidable through better thaw planning, more precise intraday production, and stronger stock recording.

The bakery process creates bookkeeping complexity. A frozen case may become dozens of fresh selling units. Some stores record thawing as a positive shelf-stock movement, while others treat it as a production transfer. Inconsistent routines may hide the real source of shrink.

## The Trigger

Norda Market's finance team observed that aggregate waste expenses had increased over the previous quarter. Store operations argued that the increase was partly a measurement problem: more stores were now posting waste correctly. The supply chain team disagreed. It believed that stock inaccuracies were leading to poor replenishment signals, excessive safety stock, and avoidable write-offs.

An internal audit selected three months of transaction-level inventory records for the three assortments. The files include goods receipts, sales movements, waste postings, transfer movements, shrinkage entries, and count adjustments. The data are not clean. They include missing values, delayed postings, duplicate references, negative book stock, and suspicious quantities.

The board has asked an external student consulting team to answer one question:

> Where should Norda Market intervene first if it wants to improve inventory accuracy and reduce avoidable waste without damaging product availability?

## The Decision

Matthias Hillmann must recommend a focused intervention program at the next executive meeting. He does not have the budget to redesign all store processes at once. He needs to know which assortment, store cluster, process step, or data-quality issue should be addressed first.

The student team must use the available data to build a defensible argument. A strong answer will not simply identify the assortment with the highest waste. It will distinguish between structural waste that is inherent to the assortment and avoidable waste that appears connected to inventory inaccuracy, ordering behavior, or weak process control.

## Management Constraints

Norda Market's leadership has set five constraints:

1. Availability may not be reduced in high-velocity items without evidence.
2. Recommendations must be implementable in store operations within eight weeks.
3. Any proposed KPI must be understandable to store managers.
4. The analysis must separate data-quality issues from operational performance where possible.
5. The final presentation must be concise enough for a 15-minute management meeting.

## Data Available

Students receive three Excel workbooks, one for each assortment:

- Frozen food inventory transactions.
- Fresh produce inventory transactions.
- Bake-off bakery inventory transactions.

Each workbook contains:

- A transaction sheet with approximately 600,000 movement records.
- A SKU master sheet with product characteristics.
- A store master sheet with location and format attributes.
- An assumptions sheet describing generation logic and intended teaching caveats.

The company warns that not every movement should be taken at face value. The data reflect an operational system, not a cleaned analytical table.
