# Datenwörterbuch

Die Workbooks zum Transport Tendering folgen derselben didaktischen Logik. Alle Werte sind fiktiv und wurden für Lehrzwecke generiert.

## Workbook-Blätter

### Shipment_Execution

Haupttabelle der ausgeführten Shipments.

| Feld | Bedeutung |
| --- | --- |
| shipment_id | Eindeutige generierte Shipment-Kennung. Doppelte Referenzen kommen in ausgewählten Zeilen absichtlich vor. |
| shipment_date | Datum, an dem das Shipment an die Transportplanung übergeben wurde. |
| calendar_week | Fiskalische Kalenderwoche. |
| month | Shipment-Monat. |
| lane_id | Transport-Lane-Kennung. Einige Zeilen enthalten absichtlich inkonsistente Werte. |
| origin_site_id | Ursprungslager oder Produktionsstandort. |
| destination_region | Zielkunde oder regionale Zielgruppe. |
| customer_segment | Retail, E-Commerce, Wholesale, Export Distributor oder Internal Replenishment. |
| product_category | Produktkategorie des Shipments. |
| service_level | Standard, Appointment Critical, Promotion Critical, Express oder Sustainability Critical. |
| planned_carrier_id | Vertraglich geplanter Carrier, an den zuerst getendert wurde. |
| actual_carrier_id | Carrier, der das Shipment ausgeführt hat. Dieser kann vom geplanten Carrier abweichen. |
| awarded_rank | Award Rank des geplanten Carriers auf der Lane. |
| tender_status | Accepted, Rejected by Carrier, Missed Cutoff, Brokered Spot oder Manual Override. |
| transport_mode | Road FTL, Road LTL, Intermodal Rail/Road, Express Van oder Dedicated Truck. |
| pallets | Anzahl Paletten. |
| weight_kg | Shipment-Gewicht in Kilogramm. |
| volume_m3 | Shipment-Volumen in Kubikmetern. |
| contracted_rate_eur | Vertragliche Frachtrate für geplanten Carrier und Lane. |
| actual_freight_cost_eur | Tatsächlich gezahlte Frachtkosten. |
| spot_premium_eur | Differenz zwischen tatsächlichen Kosten und vertraglicher Rate, wenn Spot- oder Premiumkapazität genutzt wurde. |
| fuel_surcharge_eur | Fuel Surcharge für das Shipment. |
| accessorial_cost_eur | Waiting Time, Appointment, Toll, Handling oder Documentation Surcharge. |
| planned_delivery_date | Von der Transportplanung erwartetes Lieferdatum. |
| actual_delivery_date | Tatsächliches Lieferdatum, sofern erfasst. Einige Zeilen enthalten absichtlich fehlende Werte. |
| delay_hours | Lieferverzögerung in Stunden gegenüber Plan. |
| on_time_flag | Kennzeichnet, ob das Shipment die Lieferzusage eingehalten hat. |
| appointment_missed_flag | Kennzeichnet, ob ein Liefertermin verpasst wurde. |
| damage_claim_flag | Kennzeichnet, ob ein Transportschaden erfasst wurde. |
| co2e_kg | Geschätztes Transport-CO2e in Kilogramm. |
| co2_target_kg | Shipment-spezifisches CO2e-Ziel. |
| co2_target_missed_flag | Kennzeichnet, ob das geschätzte CO2e das Ziel überschritten hat. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Spot_Quotes

Spotmarktangebote, verknüpft mit Tenderfehlern, dringender Nachfrage oder manuellen Spotkäufen.

| Feld | Bedeutung |
| --- | --- |
| spot_quote_id | Eindeutige generierte Spot-Quote-Kennung. |
| shipment_id | Zugehörige Shipment-Kennung, sofern vorhanden. |
| quote_request_date | Datum, an dem das Spotangebot angefragt wurde. |
| lane_id | Transport-Lane-Kennung. |
| pickup_date | Geplantes Abholdatum des Shipments. |
| rejected_contract_carrier_id | Vertraglicher Carrier, der den Tender abgelehnt oder nicht bedient hat, sofern bekannt. |
| quote_carrier_id | Carrier, der das Spotangebot abgegeben hat. |
| selected_flag | Kennzeichnet, ob dieses Angebot ausgewählt wurde. |
| quoted_rate_eur | Angebotene Spot-Frachtrate. |
| market_index | Relativer Spotmarkt-Preisindex. |
| expected_transit_days | Erwartete Transitzeit laut Carrier-Angebot. |
| estimated_co2e_kg | Geschätztes CO2e des angebotenen Transports. |
| acceptance_status | Offered, Accepted, Declined, Expired oder No Capacity. |
| quote_rank_by_price | Preisrang innerhalb des Quote Sets, soweit verfügbar. |
| quote_source | TMS, Broker Portal, Manual Email oder Emergency Desk. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Tender_Bids

Carrier-Angebote nach Lane und Tenderrunde.

| Feld | Bedeutung |
| --- | --- |
| tender_id | Kennung des Tenderprozesses. |
| tender_round | Annual Tender, Mini Tender 1, Mini Tender 2 oder Emergency Rebid. |
| bid_date | Datum der Angebotsabgabe. |
| lane_id | Transport-Lane-Kennung. |
| carrier_id | Carrier-Kennung. |
| offered_rate_eur | Angebotene Linehaul Rate. |
| fuel_surcharge_pct | Angebotener Fuel-Surcharge-Prozentsatz. |
| capacity_commitment_shipments_per_week | Wöchentliche Kapazitätszusage. |
| committed_acceptance_pct | Vom Carrier zugesagte Tender Acceptance Rate. |
| committed_otd_pct | Vom Carrier zugesagte On-Time Delivery Rate. |
| committed_co2e_kg_per_ton_km | Vom Carrier zugesagte Emissionsintensität. |
| offered_mode | Vom Carrier angebotener Hauptmodus. |
| incumbent_flag | Kennzeichnet, ob der Carrier auf der Lane Incumbent war. |
| bid_rank_by_rate | Preisrang innerhalb der Lane und Tenderrunde. |
| commercial_score | Tender Score für Preiswettbewerbsfähigkeit. |
| service_score | Tender Score für Serviceversprechen und Historie. |
| sustainability_score | Tender Score für Emissionen und Equipmentprofil. |
| bid_status | Valid, Conditional, Excluded oder Missing Attachment. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Lane_Awards

Tender Award und Allocation-Tabelle.

| Feld | Bedeutung |
| --- | --- |
| award_id | Generierte Award Line Kennung. |
| tender_id | Zugehörige Tenderprozesskennung. |
| lane_id | Transport-Lane-Kennung. |
| carrier_id | Vergebene Carrier-Kennung. |
| award_rank | Primary, Secondary, Backup oder Spot Framework. |
| awarded_share_pct | Geplanter Anteil des Lane-Volumens für den Carrier. |
| contracted_rate_eur | Vertragliche Frachtrate. |
| committed_capacity_per_week | Wöchentliche Kapazitätszusage des Carriers. |
| target_acceptance_pct | Zielwert für Tender Acceptance. |
| target_otd_pct | Zielwert für On-Time Delivery. |
| target_co2e_kg_per_ton_km | Zielwert für Emissionsintensität. |
| contract_type | Fixed Rate, Indexed Fuel, Capacity Block oder Spot Framework. |
| penalty_clause | None, Service Credit, Rejection Penalty, CO2 Bonus Malus oder Customer Penalty Pass-Through. |
| sustainability_clause_flag | Kennzeichnet, ob der Vertrag eine Nachhaltigkeitsklausel enthält. |
| effective_from | Vertragsstartdatum. |
| effective_to | Vertragsenddatum. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Carrier_Scorecards

Wöchentliche Carrier Scorecard nach Carrier und Lane Group.

| Feld | Bedeutung |
| --- | --- |
| scorecard_week | Fiskalische Woche. |
| carrier_id | Carrier-Kennung. |
| lane_group | Lane Group. |
| tendered_shipments | Anzahl Shipments, die an den Carrier getendert wurden. |
| accepted_shipments | Anzahl akzeptierter Tender. |
| rejected_shipments | Anzahl abgelehnter oder verpasster Tender. |
| tender_acceptance_rate | Akzeptierte Shipments geteilt durch tendered Shipments. |
| on_time_rate | Anteil der ausgeführten Shipments, die pünktlich geliefert wurden. |
| avg_delay_hours | Durchschnittliche Verspätung in Stunden. |
| missed_appointments | Anzahl Shipments mit verpasstem Liefertermin. |
| claims_count | Anzahl Schadens- oder Servicefälle. |
| contracted_cost_eur | Vertraglicher Kostenbaseline der tendered Shipments. |
| actual_cost_eur | Tatsächlich gezahlte Kosten für zugeordnete Shipments. |
| spot_substitution_cost_eur | Spot- oder Premiumkosten, die Tenderfehlern zugeordnet werden. |
| co2e_kg | Geschätztes tatsächliches CO2e. |
| co2_target_kg | CO2e-Ziel. |
| co2_target_met_flag | Kennzeichnet, ob die wöchentliche Scorecard das Emissionsziel erreicht hat. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Claims_and_Service_Failures

Service Failure und Claim Records.

| Feld | Bedeutung |
| --- | --- |
| case_id | Generierte Case-Kennung. |
| shipment_id | Zugehörige Shipment-Kennung. |
| failure_date | Datum, an dem der Fehler erfasst wurde. |
| lane_id | Transport-Lane-Kennung. |
| carrier_id | Carrier-Kennung. |
| customer_segment | Betroffenes Kundensegment. |
| failure_type | Late Delivery, Missed Appointment, Damage Claim, Wrong Equipment, POD Missing oder Customer Escalation. |
| severity | Low, Medium, High oder Critical. |
| delay_hours | Verspätungsstunden, soweit relevant. |
| claim_amount_eur | Geforderter oder geschätzter Betrag. |
| root_cause_code | Carrier Capacity, Dispatch Error, Traffic, Warehouse Delay, Documentation, Customer Slot, Damage Handling oder Unknown. |
| corrective_action_status | Open, Under Review, Closed, Disputed oder Recurring Issue. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Carrier_Master

Carrier-Stammdaten.

| Feld | Bedeutung |
| --- | --- |
| carrier_id | Carrier-Kennung. |
| carrier_name | Carrier-Name. |
| carrier_type | Low-cost Road, Balanced Road, Premium Road, Intermodal Specialist oder Regional Niche. |
| home_region | Heimatregion des Carriers. |
| rate_index | Relative Preiswettbewerbsfähigkeit. Niedrigere Werte zeigen günstigere Carrier. |
| service_index | Relative Servicezuverlässigkeit. |
| acceptance_index | Relative Tender-Acceptance-Zuverlässigkeit. |
| co2_index | Relative Emissionsintensität. Niedrigere Werte zeigen niedrigere Emissionen. |
| fleet_euro6_share | Anteil Euro-6- oder vergleichbarer Flotte. |
| alternative_fuel_share | Anteil alternativer Kraftstoffe, elektrischer oder intermodalfähiger Ausstattung. |
| capacity_tightness | Relativer Kapazitätsengpassindikator. |
| sustainability_score | Carrier Sustainability Score. |

### Lane_Master

Lane-Referenzdaten mit Ursprung, Ziel, Lane Group, Distanz, Komplexität, Basiskosten, Volumen und CO2-Zielattributen.

### Site_Master

Referenzdaten zu Ursprungsstandorten.

### Customer_Segments

Kundensegmentbezogene Service-Sensitivität und Penalty-Annahmen.

### Cost_Parameters

Geschätzte Kosten für Spot Premiums, verpasste Termine, Kundenstrafen, Claims, CO2-Abweichungen und Tenderadministration.

### Emissions_Factors

Modusbezogene Emissionsannahmen, die für synthetische CO2-Berechnungen genutzt wurden.

### Calendar

Betriebstage, Wochentag, Fiskalwoche, Monat, Peak Flags, Month-End Flags, Promotion-Window Flags und Nachfragefaktoren.

### Assumptions

Kurze Erläuterung des synthetischen Datendesigns und der didaktischen Einschränkungen.

## Operative Ereignistypen

| Typ | Typische Interpretation | Analytische Nutzung |
| --- | --- | --- |
| Accepted tender | Vertraglicher Carrier hat den Tender akzeptiert und das Shipment ausgeführt. | Basis der Carrier Performance. |
| Rejected tender | Vertraglicher Carrier hat den Tender nicht akzeptiert. | Analyse von Tender Waterfall und Kapazitätsrisiko. |
| Brokered spot | Shipment wurde über Spotmarkt oder Brokerkapazität bewegt. | Diagnose versteckter Kosten und Resilienz. |
| Late delivery | Shipment verfehlte Lieferdatum oder Liefertermin. | Service-Performance-Analyse. |
| Missed appointment | Lieferung verfehlte ein striktes Entladefenster. | Analyse des Kundeneffekts. |
| CO2 target miss | Shipment-Emissionen lagen über Ziel. | Nachhaltigkeits-Trade-off-Analyse. |

## Analytische Hinweise

- Ein Low-Rate-Carrier ist nicht automatisch schlecht, wenn er auf dem richtigen Lane-Typ gut performt.
- Eine hohe On-Time Rate kann häufige Tender Rejections verdecken, wenn nur ausgeführte Shipments betrachtet werden.
- Spotmarktaufwand sollte soweit möglich auf den abgelehnten oder fehlgeschlagenen Contract Carrier zurückgeführt werden.
- CO2-Vergleiche sollten Distanz, Shipment-Gewicht, Mode und Lane-Typ kontrollieren.
- Ein leerer `exception_code` garantiert nicht, dass eine Zeile korrekt ist.
- Einige Datensätze enthalten absichtlich widersprüchliche oder unvollständige operative Informationen.
