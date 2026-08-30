# Case Study: The Bottleneck Network

## RheinMain CargoLink's Capacity Problem

On a cold Monday morning in April, RheinMain CargoLink's Chief Operations Officer, Jana Keller, opened the weekly network dashboard and saw two versions of the same truth.

The network system said that total capacity utilization had averaged 78 percent in the previous week. The operations calls told a different story. Frankfurt reported dock queues after 18:00. Cologne had trailers waiting outside the yard. The Rhein-Main hub had enough labor on paper, but outbound departures to the north left late three nights in a row. At the same time, several smaller depots sent linehaul trucks out below capacity.

RheinMain CargoLink was not facing a single capacity problem. It was facing several operational problems that happened to be visible in the same network dashboard.

Depot handling capacity was tight on peak weekdays, but not always at the same sites. Hub capacity was affected by cross-regional imbalances and late inbound feeder arrivals. Linehaul capacity looked sufficient at network level, but selected lanes showed repeated overflow and missed departures. The company had enough data to see the symptoms, but not yet enough confidence to decide where to act.

The executive board wanted a practical answer within four weeks. The company did not ask for a perfect academic model. It asked for a management recommendation that could be defended under questioning.

## Company Background

RheinMain CargoLink is a fictional German general cargo carrier with regional depots, satellite depots, two central hubs, and scheduled linehaul services. The company transports palletized and non-palletized business-to-business consignments for industrial suppliers, wholesalers, online merchants, automotive suppliers, healthcare distributors, and regional customers.

The capacity areas in scope are operationally distinct:

### Depot Handling

Depots collect freight from customers, unload inbound vehicles, consolidate consignments, and prepare outbound linehaul. Demand is uneven across weekdays, regions, and customer segments. Depot handling capacity is usually measured in handling units per day. When losses in service occur, they are often related to late freight readiness, missed cut-offs, insufficient evening throughput, or weak flow control between inbound and outbound processes.

Depot managers can use overtime and temporary labor, but these measures help only if labor is the binding constraint. If dock doors or yard space are exhausted, additional staff may not translate into higher throughput.

### Hub and Yard Capacity

The two hubs handle cross-regional consolidation and overnight sorting flows. Hubs can absorb imbalances between regions, but they can also amplify delays when inbound freight arrives late. Yard capacity creates an additional constraint because trailers and swap bodies require space before they can be unloaded, staged, and dispatched.

Hub congestion is difficult to interpret. A hub can appear to be the problem because backlog is observed there, even when the root cause is an overloaded origin depot or a constrained inbound lane.

### Linehaul Capacity

Linehaul movements connect depots and hubs through scheduled evening and overnight departures. Capacity is measured in handling units per lane and departure. Some lanes operate with own fleet, others with contracted carriers or spot capacity. Service failures can occur when freight is ready but cannot be loaded, when a scheduled departure is cancelled, or when freight misses the cut-off before linehaul capacity becomes available.

Linehaul capacity is expensive to add at short notice. Spot capacity is possible, but it is not always available on the lanes where the network needs it most.

## The Trigger

RheinMain CargoLink's finance team observed that late-delivery penalties and spot-capacity expenses had increased over the previous quarter. Operations argued that the increase was partly a planning problem: freight volumes had shifted across regions and service classes. Network planning disagreed. It believed that the company was using total capacity figures that hid local bottlenecks and timing problems.

An internal audit selected three months of operational records for the network. The files include shipment-level consignments, linehaul movements, daily site capacities, lane capacities, service performance, backlog records, and reference tables. The data are not clean. They include missing values, delayed postings, duplicate consignment IDs, inconsistent service-class labels, outlier weights, missing capacity entries, and suspicious utilization values.

The board has asked an external student consulting team to answer one question:

> Where should RheinMain CargoLink intervene first if it wants to improve service performance without creating unnecessary fixed cost?

## The Decision

Jana Keller must recommend a focused intervention program at the next executive meeting. She does not have the budget to expand the entire network at once. She needs to know which location, lane, process step, service class, or data-quality issue should be addressed first.

The student team must use the available data to build a defensible argument. A strong answer will not simply identify the location with the highest utilization. It will distinguish between structural capacity shortage, temporary execution problems, flow imbalance, and data-quality noise.

## Management Constraints

RheinMain CargoLink's leadership has set five constraints:

1. Premium freight may not be deprioritized without evidence.
2. Recommendations must be implementable in network operations within eight weeks.
3. Any proposed KPI must be understandable to depot and network managers.
4. The analysis must separate data-quality issues from operational performance where possible.
5. The final presentation must be concise enough for a 15-minute management meeting.

## Data Available

Students receive several Excel workbooks covering the general cargo network:

- Shipment-level consignment records.
- Linehaul movement records.
- Daily location capacity records.
- Daily lane capacity records.
- Daily service and backlog records.
- Location, lane, cost, and calendar reference tables.

Each shipment and linehaul workbook contains:

- A main data sheet with operational records.
- Location and lane master sheets with network attributes.
- An assumptions sheet describing generation logic and intended teaching caveats.
- A split-info sheet where applicable.

The company warns that not every movement or capacity record should be taken at face value. The data reflect an operational system, not a cleaned analytical table.
