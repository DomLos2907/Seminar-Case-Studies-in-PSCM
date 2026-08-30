# Datenlexikon

Die Workbooks zur Netzwerkkapazität folgen derselben didaktischen Logik. Die Werte sind fiktiv und wurden für Lehrzwecke erzeugt.

## Workbook-Sheets

### Shipments

Zentrale Tabelle der Sendungen auf Consignment-Ebene.

| Feld | Bedeutung |
| --- | --- |
| consignment_id | Sendungskennung. Doppelte Werte treten in ausgewählten Zeilen bewusst auf. |
| booking_date | Datum, an dem die Sendung gebucht wurde. |
| pickup_date | Geplantes oder tatsächliches Abholdatum. |
| origin_depot | Kennung des Origin-Depots. |
| destination_depot | Kennung des Destination-Depots. Einige Zeilen enthalten bewusst fehlende Werte. |
| planned_hub | Für Konsolidierung oder Cross-Dock geplantes Hub. |
| actual_hub | Operativ genutztes Hub. Einige Zeilen enthalten bewusst fehlende Werte oder Umleitungen. |
| service_class | Premium, Standard oder Economy. Einige Zeilen verwenden bewusst uneinheitliche Bezeichnungen. |
| customer_segment | Der Sendung zugeordnetes Kundensegment. |
| product_group | Stückgut-Frachtkategorie. |
| handling_units | Anzahl physischer Handling Units in der Sendung. |
| weight_kg | Sendungsgewicht in Kilogramm. Einige Zeilen enthalten Ausreißer. |
| volume_cbm | Sendungsvolumen in Kubikmetern. |
| chargeable_weight_kg | Kommerzielles frachtpflichtiges Gewicht. |
| planned_cutoff_time | Cut-off-Zeit am Origin-Depot. |
| actual_ready_time | Zeitpunkt, zu dem die Fracht für den Outbound-Prozess bereit war. |
| missed_cutoff | Gibt an, ob die Sendung den geplanten Cut-off verpasst hat. |
| promised_delivery_date | Dem Kunden zugesagtes Lieferdatum. |
| actual_delivery_date | Tatsächliches Lieferdatum, falls geliefert. |
| transit_days | Tatsächliche Transitzeit in Tagen. |
| on_time | Gibt an, ob die Sendung spätestens am zugesagten Datum geliefert wurde. |
| shipment_status | Delivered, Late Delivered, Backlog, Cancelled oder Data Review. |
| revenue_eur | Geschätzter Sendungserlös. |
| handling_cost_eur | Geschätzte Handling-Kosten. |
| linehaul_cost_eur | Geschätzte Linehaul-Kosten. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht sauber. |

### Linehaul_Movements

Geplante und ausgeführte Fernverkehrsbewegungen zwischen Depots und Hubs.

| Feld | Bedeutung |
| --- | --- |
| movement_id | Kennung der Linehaul-Bewegung. |
| departure_date | Geplantes Abfahrtsdatum. |
| origin_location | Origin-Depot oder Hub. |
| destination_location | Destination-Depot oder Hub. |
| lane_id | Lane-Kennung. |
| planned_departure_time | Geplante Abfahrtszeit. |
| actual_departure_time | Tatsächliche Abfahrtszeit. |
| planned_capacity_hu | Geplante Kapazität in Handling Units. |
| actual_capacity_hu | Tatsächlich verfügbare Kapazität in Handling Units. |
| loaded_hu | Geladene Handling Units. |
| utilization | Geladene Handling Units geteilt durch tatsächliche Kapazität. |
| overflow_hu | Handling Units, die wegen Kapazitäts- oder Cut-off-Problemen nicht geladen wurden. |
| carrier_type | Eigene Flotte, Vertragsdienstleister, Spot Carrier oder Subunternehmer. |
| delay_reason | Operativer Grund für verspätete Abfahrt, falls zutreffend. |
| movement_status | On Time, Delayed, Cancelled oder Capacity Exception. |
| cost_eur | Geschätzte Bewegungskosten. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht sauber. |

### Daily_Location_Capacity

Tägliche Tabelle zu Standortkapazität und Arbeitslast.

| Feld | Bedeutung |
| --- | --- |
| date | Betriebstag. |
| location_id | Kennung des Depots oder Hubs. |
| location_name | Standortname. |
| location_type | Depot, Hub oder Satellite Depot. |
| region | Deutscher Regionalcluster. |
| inbound_capacity_hu | Tägliche Inbound-Handling-Kapazität in Handling Units. Einige Zeilen enthalten bewusst fehlende Werte. |
| outbound_capacity_hu | Tägliche Outbound-Handling-Kapazität in Handling Units. Einige Zeilen enthalten bewusst fehlende Werte. |
| dock_door_capacity_hu | Praktische Durchsatzkapazität der Docktore. |
| yard_capacity_trailers | Praktische Yard-Kapazität in Trailern oder Wechselbrücken. |
| planned_inbound_hu | Geplante Inbound Handling Units. |
| actual_inbound_hu | Tatsächliche Inbound Handling Units. |
| planned_outbound_hu | Geplante Outbound Handling Units. |
| actual_outbound_hu | Tatsächliche Outbound Handling Units. |
| yard_peak_trailers | Maximal beobachtete Yard-Belegung. |
| overtime_hours | Am Standort eingesetzte Überstunden. |
| temp_capacity_hu | Temporär hinzugefügte Handling-Kapazität an diesem Tag. |
| weather_disruption | Wetter- oder externe Störungsmarkierung. |
| capacity_exception | Kapazitätsbezogene Ausnahmebezeichnung. |

### Daily_Lane_Capacity

Tägliche Kapazitätstabelle auf Lane-Ebene.

| Feld | Bedeutung |
| --- | --- |
| date | Betriebstag. |
| lane_id | Lane-Kennung. |
| origin_location | Origin-Depot oder Hub. |
| destination_location | Destination-Depot oder Hub. |
| planned_capacity_hu | Geplante Lane-Kapazität in Handling Units. |
| actual_capacity_hu | Tatsächliche Lane-Kapazität nach Ausfällen oder Spot Capacity. |
| booked_hu | Der Lane zugewiesene Handling Units. |
| overflow_hu | Handling Units, die nicht wie geplant transportiert wurden. |
| utilization | Gebuchte Handling Units geteilt durch tatsächliche Kapazität. |
| added_spot_capacity_hu | Temporäre Spot Capacity, die an diesem Tag hinzugekauft wurde. |
| lane_exception | Kapazitäts- oder Ausführungsanomalie. |

### Daily_Service_Backlog

Täglich aggregierte Service- und Backlog-Tabelle.

| Feld | Bedeutung |
| --- | --- |
| date | Betriebstag. |
| location_id | Kennung des Depots oder Hubs. |
| location_type | Depot, Hub oder Satellite Depot. |
| region | Deutscher Regionalcluster. |
| service_class | Premium, Standard oder Economy. |
| consignments_received | Sendungen, die am Standort oder Kontrollpunkt eingingen. |
| handling_units_received | Eingegangene Handling Units. |
| consignments_delivered_on_time | Sendungen, die spätestens zum zugesagten Datum geliefert wurden. |
| consignments_late | Verspätete Sendungen. |
| backlog_opening_hu | Backlog zu Tagesbeginn. |
| backlog_added_hu | Neuer Backlog während des Tages. |
| backlog_released_hu | Während des Tages abgebauter Backlog. |
| backlog_closing_hu | Backlog am Tagesende. |
| service_level | Pünktliche Sendungen geteilt durch eingegangene Sendungen. |
| root_cause_hint | Dominanter operativer Hinweis für diese Standort-Tag-Service-Kombination. |

### Location_Master

Standortreferenzdaten für das Netzwerk.

| Feld | Bedeutung |
| --- | --- |
| location_id | Kennung des Depots oder Hubs. |
| location_name | Standortname. |
| location_type | Depot, Hub oder Satellite Depot. |
| region | Regionalcluster. |
| base_inbound_hu | Basiswert der Inbound-Handling-Kapazität. |
| base_outbound_hu | Basiswert der Outbound-Handling-Kapazität. |
| dock_door_capacity_hu | Basiswert der Docktor-Durchsatzkapazität. |
| yard_capacity_trailers | Basiswert der Yard-Kapazität. |
| network_role | Rolle des Standorts im Netzwerk. |
| reliability_score | Relativer Indikator für operative Zuverlässigkeit. |
| cost_index | Relativer lokaler Kostenindikator. |
| assigned_hub | Dem Depot normalerweise zugeordnetes Hub. |

### Lane_Master

Lane-Referenzdaten für das Netzwerk.

| Feld | Bedeutung |
| --- | --- |
| lane_id | Lane-Kennung. |
| origin_location | Origin-Depot oder Hub. |
| destination_location | Destination-Depot oder Hub. |
| lane_type | Depot-Hub, Hub-Depot, Hub-Hub oder Direct Regional. |
| distance_km | Ungefähre Lane-Distanz. |
| default_capacity_hu | Typische Handling-Unit-Kapazität des geplanten Abfahrtsmusters. |
| planned_departures_per_day | Geplante Anzahl der Abfahrten pro Tag. |
| strategic_relevance | Core, critical oder flexible relationship. |

### Cost_Parameters

Geschätzte Kosten für temporäre Handling-Kapazität, Überstunden, Spot Linehaul, Yard-Miete, Verspätungsfolgen und Administration bei verpassten Cut-offs.

### Calendar

Betriebstage, Wochentag, Fiscal Week, Peak Flags, Feiertagsnähe und Nachfrage-Multiplikatoren.

### Assumptions

Kurze Erläuterung des synthetischen Datendesigns und der didaktischen Einschränkungen.

## Operative Ereignistypen

| Typ | Typische Interpretation | Analytische Nutzung |
| --- | --- | --- |
| Delivered shipment | Sendung spätestens zum zugesagten Datum geliefert, sofern Datenqualität nichts anderes nahelegt. | Basis der Service Performance. |
| Late delivered shipment | Sendung nach zugesagtem Datum geliefert. | Analyse von Serviceausfällen. |
| Backlog shipment | Sendung innerhalb des Extracts noch nicht geliefert. | Analyse von Backlog-Aufbau und Kapazitätsdruck. |
| Missed cut-off | Fracht war nach dem geplanten Origin-Cut-off bereit. | Diagnose von Timing und Depotprozessen. |
| Linehaul overflow | Gebuchte oder geladene Handling Units überschreiten die verfügbare Lane-Kapazität. | Diagnose der Lane-Kapazität. |
| Capacity exception | Standort- oder Lane-Datensatz mit Überlast, fehlender Kapazität, Wetterstörung oder Yard-Stau. | Diagnose von Datenqualität und operativem Risiko. |

## Analytische Hinweise

- Auslastung über 100 Prozent kann auf Overflow, temporäre Kapazität oder Datenprobleme hinweisen.
- Ein leerer exception_code bedeutet nicht, dass eine Zeile korrekt ist.
- Fehlende Kapazitätswerte sollten nicht automatisch als Nullkapazität interpretiert werden.
- Hohe Depotauslastung ist nicht zwangsläufig die Ursache, wenn vorgelagerter Linehaul oder Hub-Stau die Arbeitslast erzeugt hat.
- Serviceausfälle können an einem anderen Standort entstehen als dort, wo sie beobachtet werden.
- Premium-Fracht sollte getrennt von Standard- und Economy-Fracht bewertet werden.
