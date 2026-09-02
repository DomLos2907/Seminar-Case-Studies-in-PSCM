# Datenwörterbuch

Die Workbooks zur Lieferantenzuverlässigkeit folgen derselben didaktischen Logik. Alle Werte sind fiktiv und wurden für Lehrzwecke generiert.

## Workbook-Blätter

### Purchase_Orders

Haupttabelle der Bestellpositionen.

| Feld | Bedeutung |
| --- | --- |
| po_line_id | Eindeutige generierte Kennung der Bestellposition. |
| po_id | Bestellkennung. Doppelte Bestellpositionsreferenzen kommen in ausgewählten Zeilen absichtlich vor. |
| supplier_id | Lieferantenkennung. Einige Zeilen enthalten absichtlich fehlende Werte. |
| supplier_name | Lieferantenname. |
| supplier_region | Regionale Lieferantengruppe. |
| plant_id | Kennung des empfangenden Werks. |
| production_line | Produktionslinie, die primär vom Material betroffen ist. |
| material_id | Materialkennung. Einige Zeilen enthalten absichtlich fehlende Werte. |
| material_group | Electronic Components, Machined Metal Parts oder Standard Components and Fasteners. |
| material_name | Materialname. |
| criticality | Low, Medium, High oder Line Stopper. |
| order_date | Datum, an dem die Bestellposition erstellt wurde. |
| requested_delivery_date | Von der Produktionsplanung benötigtes Lieferdatum. |
| confirmed_delivery_date | Vom Lieferanten bestätigtes Lieferdatum. Einige Zeilen enthalten absichtlich fehlende Werte. |
| actual_delivery_date | Tatsächliches Lieferdatum, sofern die Bestellung geliefert wurde. |
| order_qty | Bestellte Menge. |
| received_qty | Zugeordnete erhaltene Menge. |
| open_qty | Offene Restmenge. |
| uom | Mengeneinheit. Einige Zeilen verwenden inkonsistente Werte. |
| unit_price_eur | Einkaufspreis je Einheit. |
| planned_lead_time_days | Im System hinterlegte Planlieferzeit. |
| actual_lead_time_days | Tatsächliche Lieferzeit von Bestellung bis Lieferung. |
| delivery_status | On Time, Late, Partial, Open, Cancelled oder Quality Hold. |
| partial_delivery_flag | Kennzeichnet, ob die Bestellposition nur teilweise eingegangen ist. |
| quality_hold_flag | Kennzeichnet, ob eingegangene Ware in der Qualitätsprüfung gesperrt wurde. |
| expedite_flag | Kennzeichnet Expressfracht oder Notfallbeschaffung. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Goods_Receipts

Tabelle der Wareneingangsbuchungen.

| Feld | Bedeutung |
| --- | --- |
| receipt_id | Kennung der Wareneingangsbuchung. |
| po_line_id | Zugehörige Bestellpositionskennung. |
| supplier_id | Lieferantenkennung. |
| plant_id | Kennung des empfangenden Werks. |
| material_id | Materialkennung. |
| receipt_date | Buchungsdatum des Wareneingangs. |
| physical_arrival_date | Datum des physischen Wareneingangs. Bei später Buchung liegt dieses Datum vor dem Buchungsdatum. |
| receipt_qty | Im Wareneingang gebuchte Menge. |
| accepted_qty | Für die Nutzung freigegebene Menge. |
| rejected_qty | Abgelehnte oder gesperrte Menge. |
| uom | Mengeneinheit. |
| quality_status | Released, Inspection, Blocked, Rework oder Rejected. |
| warehouse_location | Empfangslager oder Bereitstellfläche. |
| posting_delay_days | Differenz zwischen physischem Eingang und Buchung. |
| reference_doc | Operative Referenznummer. Doppelte Referenzen kommen absichtlich vor. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Production_Demand

Tabelle der täglichen Materialbedarfe und Produktionsplanung.

| Feld | Bedeutung |
| --- | --- |
| demand_id | Generierte Bedarfskennung. |
| demand_date | Datum des Materialbedarfs. |
| plant_id | Standortkennung. |
| production_line | Produktionslinie. |
| finished_good | Fertigwarenfamilie. |
| material_id | Benötigte Materialkennung. |
| material_group | Materialgruppe. |
| criticality | Materialkritikalität. |
| planned_order_id | Produktionsauftrag oder geplanter Auftrag. |
| required_qty | Für Produktion benötigte Menge. |
| available_stock_qty | Zum Planungszeitpunkt verfügbarer Bestand. |
| safety_stock_qty | Im System hinterlegter Sicherheitsbestand. |
| reorder_point_qty | Im System hinterlegter Meldebestand. |
| planned_lead_time_days | Im System hinterlegte Planlieferzeit. |
| shortage_qty | Nicht durch verfügbaren Bestand gedeckte Bedarfsmenge. |
| production_risk_flag | Kennzeichnet, ob der Bedarfsdatensatz ein Produktionsrisiko zeigt. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Shortage_Events

Tabelle der Materialengpässe und Produktionsstörungen.

| Feld | Bedeutung |
| --- | --- |
| shortage_event_id | Generierte Engpassereigniskennung. |
| event_date | Datum, an dem der Engpass erfasst wurde. |
| plant_id | Standortkennung. |
| production_line | Betroffene Produktionslinie. |
| material_id | Materialkennung. |
| material_group | Materialgruppe. |
| supplier_id | Primärer Lieferant, der dem Engpass zugeordnet ist. |
| shortage_qty | Fehlende Materialmenge. |
| impacted_production_orders | Anzahl betroffener Produktionsaufträge. |
| lost_output_units | Geschätzter verlorener Fertigwarenausstoß. |
| downtime_hours | Geschätzter Produktionsstillstand. |
| root_cause_code | Supplier Delay, Partial Delivery, Quality Hold, Planning Parameter, Demand Spike, Master Data oder Unknown. |
| escalation_level | None, Buyer, Plant Manager, Executive oder Customer Alert. |
| resolved_date | Datum, an dem der Engpass gelöst wurde. |
| status | Open, Resolved oder Data Review. |
| estimated_cost_eur | Geschätzte Engpasskosten. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Expedite_Shipments

Premiumfracht- und Notfallbeschaffungsdaten.

| Feld | Bedeutung |
| --- | --- |
| expedite_id | Generierte Expedite-Kennung. |
| request_date | Datum der Expedite-Anfrage. |
| supplier_id | Lieferantenkennung. |
| plant_id | Kennung des empfangenden Werks. |
| material_id | Materialkennung. |
| linked_po_line_id | Zugehörige Bestellposition, sofern vorhanden. |
| expedite_reason | Grund für die Expedite-Maßnahme. |
| transport_mode | Air, Express Truck, Dedicated Van, Courier oder Emergency Supplier Pickup. |
| expedited_qty | Beschleunigte Menge. |
| expedite_cost_eur | Inkrementelle Expedite-Kosten. |
| days_saved | Geschätzte eingesparte Tage gegenüber normaler Lieferung. |
| avoided_downtime_hours | Geschätzte vermiedene Stillstandszeit. |
| approval_level | Buyer, Purchasing Manager, Plant Manager oder Executive. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Supplier_Master

Lieferantenstammdaten.

| Feld | Bedeutung |
| --- | --- |
| supplier_id | Lieferantenkennung. |
| supplier_name | Lieferantenname. |
| supplier_region | Regionale Gruppe. |
| supplier_tier | Strategic, Preferred, Approved oder Tactical. |
| risk_class | Low, Medium, High oder Critical. |
| baseline_otd_rate | Näherungswert der On-Time-Delivery-Basisperformance. |
| confirmation_reliability | Näherungswert der Zuverlässigkeit bestätigter Termine. |
| quality_risk | Relativer Qualitätsrisikoindikator. |
| financial_risk | Relativer finanzieller Risikoindikator. |
| primary_material_group | Primäre gelieferte Materialgruppe. |

### Material_Master

Materialstammdaten.

| Feld | Bedeutung |
| --- | --- |
| material_id | Materialkennung. |
| material_group | Materialgruppe. |
| material_name | Materialname. |
| criticality | Low, Medium, High oder Line Stopper. |
| base_uom | Standardmengeneinheit. |
| unit_price_eur | Geschätzter Einkaufspreis. |
| planned_lead_time_days | Im System hinterlegte Planlieferzeit. |
| safety_stock_qty | Sicherheitsbestandsparameter. |
| reorder_point_qty | Meldebestandsparameter. |
| single_source_flag | Kennzeichnet Single Sourcing. |
| primary_supplier_id | Primärer Lieferant. |

### Plant_Master

Referenzdaten zu Werken und Produktionslinien.

### Cost_Parameters

Geschätzte Kosten für Stillstand, verlorenen Output, Expressfracht, Qualitätssperren, Lagerhaltung und Lieferantenentwicklung.

### Calendar

Betriebstage, Wochentag, Fiskalwoche, Monat, Nähe zu Werksstillständen, Peak-Flags und Nachfragefaktoren.

### Assumptions

Kurze Erläuterung des synthetischen Datendesigns und der didaktischen Einschränkungen.

## Operative Ereignistypen

| Typ | Typische Interpretation | Analytische Nutzung |
| --- | --- | --- |
| On Time purchase order | Lieferung am oder vor bestätigtem bzw. gewünschtem Datum, je nach KPI-Definition. | Basis der Lieferantenzuverlässigkeit. |
| Late purchase order | Lieferung nach gewünschtem oder bestätigtem Datum. | Analyse der Lieferzuverlässigkeit. |
| Partial delivery | Eingegangene Menge liegt unter der bestellten Menge. | Diagnose von Coverage und Engpassrisiko. |
| Quality hold | Material ist physisch angekommen, aber nicht für Produktion freigegeben. | Diagnose effektiver Materialverfügbarkeit. |
| Shortage event | Produktionsbedarf konnte nicht durch nutzbares Material gedeckt werden. | Analyse der Produktionsauswirkung. |
| Expedite shipment | Premiumtransport oder Notfallbeschaffung wurde genutzt. | Kosten- und Mitigationsanalyse. |

## Analytische Hinweise

- Ein Lieferant mit vielen verspäteten Positionen ist nicht automatisch der schlechteste Lieferant, wenn er zugleich das größte Volumen und geringe Kritikalität bedient.
- Ein leerer `exception_code` garantiert nicht, dass eine Zeile korrekt ist.
- Physischer Eingang und Buchungsdatum können auseinanderfallen und tägliche Verfügbarkeit verzerren.
- Qualitätssperren können Engpässe verursachen, obwohl eine Lieferung scheinbar pünktlich war.
- Lieferzeitvergleiche sollten gewünschte, bestätigte, geplante und tatsächliche Lieferzeit unterscheiden.
- Sicherheitsbestand überall zu erhöhen kann Engpässe reduzieren, aber übermäßig Working Capital binden.
