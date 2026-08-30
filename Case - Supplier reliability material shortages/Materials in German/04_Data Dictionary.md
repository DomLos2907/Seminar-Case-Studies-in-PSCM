# Datenwoerterbuch

Die Workbooks zur Lieferantenzuverlaessigkeit folgen derselben didaktischen Logik. Alle Werte sind fiktiv und wurden fuer Lehrzwecke generiert.

## Workbook-Blaetter

### Purchase_Orders

Haupttabelle der Bestellpositionen.

| Feld | Bedeutung |
| --- | --- |
| po_line_id | Eindeutige generierte Kennung der Bestellposition. |
| po_id | Bestellkennung. Doppelte Bestellpositionsreferenzen kommen in ausgewaehlten Zeilen absichtlich vor. |
| supplier_id | Lieferantenkennung. Einige Zeilen enthalten absichtlich fehlende Werte. |
| supplier_name | Lieferantenname. |
| supplier_region | Regionale Lieferantengruppe. |
| plant_id | Kennung des empfangenden Werks. |
| production_line | Produktionslinie, die primaer vom Material betroffen ist. |
| material_id | Materialkennung. Einige Zeilen enthalten absichtlich fehlende Werte. |
| material_group | Electronic Components, Machined Metal Parts oder Standard Components and Fasteners. |
| material_name | Materialname. |
| criticality | Low, Medium, High oder Line Stopper. |
| order_date | Datum, an dem die Bestellposition erstellt wurde. |
| requested_delivery_date | Von der Produktionsplanung benoetigtes Lieferdatum. |
| confirmed_delivery_date | Vom Lieferanten bestaetigtes Lieferdatum. Einige Zeilen enthalten absichtlich fehlende Werte. |
| actual_delivery_date | Tatsaechliches Lieferdatum, sofern die Bestellung geliefert wurde. |
| order_qty | Bestellte Menge. |
| received_qty | Zugeordnete erhaltene Menge. |
| open_qty | Offene Restmenge. |
| uom | Mengeneinheit. Einige Zeilen verwenden inkonsistente Werte. |
| unit_price_eur | Einkaufspreis je Einheit. |
| planned_lead_time_days | Im System hinterlegte Planlieferzeit. |
| actual_lead_time_days | Tatsaechliche Lieferzeit von Bestellung bis Lieferung. |
| delivery_status | On Time, Late, Partial, Open, Cancelled oder Quality Hold. |
| partial_delivery_flag | Kennzeichnet, ob die Bestellposition nur teilweise eingegangen ist. |
| quality_hold_flag | Kennzeichnet, ob eingegangene Ware in der Qualitaetspruefung gesperrt wurde. |
| expedite_flag | Kennzeichnet Expressfracht oder Notfallbeschaffung. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Goods_Receipts

Tabelle der Wareneingangsbuchungen.

| Feld | Bedeutung |
| --- | --- |
| receipt_id | Kennung der Wareneingangsbuchung. |
| po_line_id | Zugehoerige Bestellpositionskennung. |
| supplier_id | Lieferantenkennung. |
| plant_id | Kennung des empfangenden Werks. |
| material_id | Materialkennung. |
| receipt_date | Buchungsdatum des Wareneingangs. |
| physical_arrival_date | Datum des physischen Wareneingangs. Bei spaeter Buchung liegt dieses Datum vor dem Buchungsdatum. |
| receipt_qty | Im Wareneingang gebuchte Menge. |
| accepted_qty | Fuer die Nutzung freigegebene Menge. |
| rejected_qty | Abgelehnte oder gesperrte Menge. |
| uom | Mengeneinheit. |
| quality_status | Released, Inspection, Blocked, Rework oder Rejected. |
| warehouse_location | Empfangslager oder Bereitstellflaeche. |
| posting_delay_days | Differenz zwischen physischem Eingang und Buchung. |
| reference_doc | Operative Referenznummer. Doppelte Referenzen kommen absichtlich vor. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Production_Demand

Tabelle der taeglichen Materialbedarfe und Produktionsplanung.

| Feld | Bedeutung |
| --- | --- |
| demand_id | Generierte Bedarfskennung. |
| demand_date | Datum des Materialbedarfs. |
| plant_id | Standortkennung. |
| production_line | Produktionslinie. |
| finished_good | Fertigwarenfamilie. |
| material_id | Benoetigte Materialkennung. |
| material_group | Materialgruppe. |
| criticality | Materialkritikalitaet. |
| planned_order_id | Produktionsauftrag oder geplanter Auftrag. |
| required_qty | Fuer Produktion benoetigte Menge. |
| available_stock_qty | Zum Planungszeitpunkt verfuegbarer Bestand. |
| safety_stock_qty | Im System hinterlegter Sicherheitsbestand. |
| reorder_point_qty | Im System hinterlegter Meldebestand. |
| planned_lead_time_days | Im System hinterlegte Planlieferzeit. |
| shortage_qty | Nicht durch verfuegbaren Bestand gedeckte Bedarfsmenge. |
| production_risk_flag | Kennzeichnet, ob der Bedarfsdatensatz ein Produktionsrisiko zeigt. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Shortage_Events

Tabelle der Materialengpaesse und Produktionsstoerungen.

| Feld | Bedeutung |
| --- | --- |
| shortage_event_id | Generierte Engpassereigniskennung. |
| event_date | Datum, an dem der Engpass erfasst wurde. |
| plant_id | Standortkennung. |
| production_line | Betroffene Produktionslinie. |
| material_id | Materialkennung. |
| material_group | Materialgruppe. |
| supplier_id | Primaerer Lieferant, der dem Engpass zugeordnet ist. |
| shortage_qty | Fehlende Materialmenge. |
| impacted_production_orders | Anzahl betroffener Produktionsauftraege. |
| lost_output_units | Geschaetzter verlorener Fertigwarenausstoß. |
| downtime_hours | Geschaetzter Produktionsstillstand. |
| root_cause_code | Supplier Delay, Partial Delivery, Quality Hold, Planning Parameter, Demand Spike, Master Data oder Unknown. |
| escalation_level | None, Buyer, Plant Manager, Executive oder Customer Alert. |
| resolved_date | Datum, an dem der Engpass geloest wurde. |
| status | Open, Resolved oder Data Review. |
| estimated_cost_eur | Geschaetzte Engpasskosten. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Expedite_Shipments

Premiumfracht- und Notfallbeschaffungsdaten.

| Feld | Bedeutung |
| --- | --- |
| expedite_id | Generierte Expedite-Kennung. |
| request_date | Datum der Expedite-Anfrage. |
| supplier_id | Lieferantenkennung. |
| plant_id | Kennung des empfangenden Werks. |
| material_id | Materialkennung. |
| linked_po_line_id | Zugehoerige Bestellposition, sofern vorhanden. |
| expedite_reason | Grund fuer die Expedite-Massnahme. |
| transport_mode | Air, Express Truck, Dedicated Van, Courier oder Emergency Supplier Pickup. |
| expedited_qty | Beschleunigte Menge. |
| expedite_cost_eur | Inkrementelle Expedite-Kosten. |
| days_saved | Geschaetzte eingesparte Tage gegenueber normaler Lieferung. |
| avoided_downtime_hours | Geschaetzte vermiedene Stillstandszeit. |
| approval_level | Buyer, Purchasing Manager, Plant Manager oder Executive. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Supplier_Master

Lieferantenstammdaten.

| Feld | Bedeutung |
| --- | --- |
| supplier_id | Lieferantenkennung. |
| supplier_name | Lieferantenname. |
| supplier_region | Regionale Gruppe. |
| supplier_tier | Strategic, Preferred, Approved oder Tactical. |
| risk_class | Low, Medium, High oder Critical. |
| baseline_otd_rate | Naeherungswert der On-Time-Delivery-Basisperformance. |
| confirmation_reliability | Naeherungswert der Zuverlaessigkeit bestaetigter Termine. |
| quality_risk | Relativer Qualitaetsrisikoindikator. |
| financial_risk | Relativer finanzieller Risikoindikator. |
| primary_material_group | Primaere gelieferte Materialgruppe. |

### Material_Master

Materialstammdaten.

| Feld | Bedeutung |
| --- | --- |
| material_id | Materialkennung. |
| material_group | Materialgruppe. |
| material_name | Materialname. |
| criticality | Low, Medium, High oder Line Stopper. |
| base_uom | Standardmengeneinheit. |
| unit_price_eur | Geschaetzter Einkaufspreis. |
| planned_lead_time_days | Im System hinterlegte Planlieferzeit. |
| safety_stock_qty | Sicherheitsbestandsparameter. |
| reorder_point_qty | Meldebestandsparameter. |
| single_source_flag | Kennzeichnet Single Sourcing. |
| primary_supplier_id | Primaerer Lieferant. |

### Plant_Master

Referenzdaten zu Werken und Produktionslinien.

### Cost_Parameters

Geschaetzte Kosten fuer Stillstand, verlorenen Output, Expressfracht, Qualitaetssperren, Lagerhaltung und Lieferantenentwicklung.

### Calendar

Betriebstage, Wochentag, Fiskalwoche, Monat, Naehe zu Werksstillstaenden, Peak-Flags und Nachfragefaktoren.

### Assumptions

Kurze Erlaeuterung des synthetischen Datendesigns und der didaktischen Einschraenkungen.

## Operative Ereignistypen

| Typ | Typische Interpretation | Analytische Nutzung |
| --- | --- | --- |
| On Time purchase order | Lieferung am oder vor bestaetigtem bzw. gewuenschtem Datum, je nach KPI-Definition. | Basis der Lieferantenzuverlaessigkeit. |
| Late purchase order | Lieferung nach gewuenschtem oder bestaetigtem Datum. | Analyse der Lieferzuverlaessigkeit. |
| Partial delivery | Eingegangene Menge liegt unter der bestellten Menge. | Diagnose von Coverage und Engpassrisiko. |
| Quality hold | Material ist physisch angekommen, aber nicht fuer Produktion freigegeben. | Diagnose effektiver Materialverfuegbarkeit. |
| Shortage event | Produktionsbedarf konnte nicht durch nutzbares Material gedeckt werden. | Analyse der Produktionsauswirkung. |
| Expedite shipment | Premiumtransport oder Notfallbeschaffung wurde genutzt. | Kosten- und Mitigationsanalyse. |

## Analytische Hinweise

- Ein Lieferant mit vielen verspaeteten Positionen ist nicht automatisch der schlechteste Lieferant, wenn er zugleich das groesste Volumen und geringe Kritikalitaet bedient.
- Ein leerer `exception_code` garantiert nicht, dass eine Zeile korrekt ist.
- Physischer Eingang und Buchungsdatum koennen auseinanderfallen und taegliche Verfuegbarkeit verzerren.
- Qualitaetssperren koennen Engpaesse verursachen, obwohl eine Lieferung scheinbar puenktlich war.
- Lieferzeitvergleiche sollten gewuenschte, bestaetigte, geplante und tatsaechliche Lieferzeit unterscheiden.
- Sicherheitsbestand ueberall zu erhoehen kann Engpaesse reduzieren, aber uebermaessig Working Capital binden.
