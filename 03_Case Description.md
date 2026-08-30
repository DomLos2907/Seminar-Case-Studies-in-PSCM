# Case Study: The Bottleneck Network

## RheinMain CargoLink's Quarter of Congestion

On the first Monday in April, Jana Keller, Chief Operating Officer of RheinMain CargoLink, opened the weekly network dashboard and saw an uncomfortable pattern. Total network volume had grown by only 7 percent compared with the previous quarter, yet late consignments had almost doubled. The problem did not look like a simple volume increase. Several depots reported yard congestion and dock queues, while other locations were sending trucks out below capacity. Some linehaul lanes were overloaded on Tuesdays and Thursdays, but underused on other days.

The finance team had a simple proposal: buy temporary capacity for the next quarter. Operations disagreed. Depot managers argued that the company did not need more capacity everywhere. It needed the right capacity in the right place, on the right days, before the evening cut-off. The network-planning team added another concern: if capacity was purchased without understanding the bottlenecks, the company might pay for idle resources while the real service failures continued.

Jana had four weeks to prepare a recommendation for the executive board.

## Company Background

RheinMain CargoLink is a fictional general cargo carrier operating a hub-and-depot network across Germany. It transports palletized and non-palletized business-to-business consignments for industrial suppliers, wholesalers, online merchants, and regional distributors.

The company does not operate as a parcel carrier. Shipments are larger, more heterogeneous, and operationally more difficult to standardize. A typical consignment may include one to six handling units, such as pallets, cages, long goods, or mixed general cargo units. Freight is collected from customers, consolidated at origin depots, moved through hubs and linehaul lanes, and distributed through destination depots.

The network consists of:

- regional depots responsible for local collection and delivery;
- two central hubs handling cross-regional consolidation;
- selected satellite depots with limited handling capacity;
- scheduled linehaul services between depots and hubs;
- day-definite and economy service classes.

The case deliberately excludes order picking. The operational question is not how to pick warehouse orders, but how to manage capacity in a general cargo transport network.

## Operational Process

Most consignments enter the system through an origin depot. Local drivers collect freight during the day. Freight is unloaded, checked, consolidated, and prepared for outbound linehaul. Long-distance movements leave in the evening and arrive overnight at a hub or destination depot. Freight is then unloaded and routed for final delivery.

Capacity constraints can occur at several points:

- inbound handling capacity at origin depots;
- outbound handling capacity at origin depots and hubs;
- dock-door capacity during peak time windows;
- yard capacity for trailers and swap bodies;
- linehaul capacity on scheduled lanes;
- hub processing capacity for cross-dock flows;
- cut-off adherence before evening departure.

Because freight is physical and bulky, capacity cannot always be shifted instantly. Temporary labor helps with handling but not if dock doors, yard space, or linehaul slots are the binding constraint. Additional trucks help if lane capacity is binding but not if freight misses the departure cut-off because the depot is congested.

## The Trigger

During the quarter under review, RheinMain CargoLink served a mix of stable industrial customers and faster-growing e-commerce-related B2B customers. Demand increased unevenly across regions. Some customers shipped more heavy freight, while others increased the number of smaller consignments. The company suspects that average shipment size, service class mix, and regional flow imbalances have changed.

The executive board has approved only a limited capacity budget for the next eight weeks. Management can fund one or two focused interventions, such as:

- temporary dock labor at selected locations;
- additional linehaul departures on selected lanes;
- yard-space rental at selected depots;
- earlier cut-off times for economy freight;
- rerouting through the second hub;
- shifting selected flows to alternative depots;
- a small pilot investment in one constrained location.

The board does not want a broad capacity expansion unless the evidence is compelling.

## The Data Situation

Students receive several Excel workbooks covering three months of operations. The data include shipment-level consignments, linehaul movements, daily site capacities, lane capacities, backlog and service performance, and reference tables.

The data are intentionally imperfect. Some shipment records have missing hub information, inconsistent service-class labels, duplicate consignment IDs, unrealistic weights, late event postings, and unit-of-measure inconsistencies. Some capacity records are missing for selected days. Lane records contain planned and actual capacity, but actual departures may differ from the schedule.

RheinMain CargoLink's analytics team warns that system data must be interpreted carefully. A location with high utilization may be genuinely constrained, but it may also be affected by late postings, unusual freight mix, or diverted flows from another site. Similarly, a delayed shipment may be caused by origin handling, linehaul capacity, hub congestion, destination depot constraints, or missing cut-offs.

## The Decision

Jana Keller must recommend where the company should intervene first. She needs to know whether the primary problem is:

- insufficient location capacity;
- insufficient linehaul capacity;
- poor timing and cut-off adherence;
- flow imbalance between regions;
- weak execution at specific locations;
- or noisy data that hides the real bottleneck.

The student team must turn messy operational data into a clear management recommendation. A strong answer will not simply rank locations by utilization. It will explain which bottlenecks matter for service, which are temporary symptoms, which are structurally important, and which intervention is likely to deliver the best service improvement per euro spent.

## Management Constraints

RheinMain CargoLink has defined six constraints:

1. Day-definite premium freight must remain the service priority.
2. Economy freight can be delayed only if the customer impact is limited and visible.
3. Temporary capacity should be preferred unless a structural bottleneck is evident.
4. Any recommended KPI must be understandable to depot managers.
5. Recommendations must be implementable within eight weeks.
6. The final management presentation must be concise enough for a 15-minute executive meeting.

## The Board Question

The executive board asks:

> Should RheinMain CargoLink buy more capacity, reallocate existing capacity, or change operating rules in its general cargo network?

The answer must be supported by data, but it must also be operationally credible.
