# Datenwörterbuch

Die Workbooks zum Retourenmanagement folgen derselben didaktischen Logik. Alle Werte sind fiktiv und wurden für Lehrzwecke generiert.

## Workbook-Blätter

### Sales_Order_Lines

Haupttabelle der Order Lines.

| Feld | Bedeutung |
| --- | --- |
| order_line_id | Eindeutige generierte Sales-Order-Line-Kennung. Doppelte Referenzen kommen in ausgewählten Zeilen absichtlich vor. |
| order_id | Kundenauftragskennung. |
| order_date | Datum, an dem die Bestellung aufgegeben wurde. |
| delivery_date | Datum, an dem die Bestellung zugestellt wurde. |
| customer_id | Kundenkennung. |
| customer_segment | New, Loyal, Promo Sensitive, High Valü, Serial Returner oder Marketplace Güst. |
| sales_channel | Webshop, Mobile App, Marketplace, Social Commerce oder Outlet Online. |
| promotion_type | None, Seasonal Campaign, Size Bundle, Flash Sale, Inflüncer Drop oder Loyalty Coupon. |
| fulfillment_center_id | Fulfillment Center, das die Bestellung versendet hat. |
| product_id | Produktkennung. Einige Zeilen enthalten absichtlich fehlende Werte. |
| product_category | Apparel, Footwear, Consumer Electronics, Home Living, Sports and Outdoor oder Beauty and Health. |
| product_name | Produktname. |
| size_sensitive_flag | Kennzeichnet, ob Fit-, Grössen- oder Stilunsicherheit die Retourenwahrscheinlichkeit wesentlich beeinflusst. |
| seasonality_index | Relative saisonale Sensitivität des Produkts. |
| order_qty | Bestellte Menge. |
| unit_selling_price_eur | Verkaufspreis je Einheit. |
| gross_margin_pct | Näherungswert der Bruttomarge vor Retoureneffekten. |
| outbound_shipping_cost_eur | Geschätzte outbound Versandkosten, der Order Line zugeordnet. |
| returned_flag | Kennzeichnet, ob die Zeile im Datensatz eine Return Authorization erzeugt hat. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Return_Authorizations

Tabelle der Retourenanfragen und Parcel Receipts.

| Feld | Bedeutung |
| --- | --- |
| return_id | Eindeutige generierte Retourenkennung. Doppelte RMA-Referenzen kommen in ausgewählten Zeilen absichtlich vor. |
| order_line_id | Zugehörige Order-Line-Kennung. |
| order_id | Zugehörige Kundenauftragskennung. |
| customer_id | Kundenkennung. |
| product_id | Produktkennung. |
| product_category | Produktkategorie. |
| return_created_date | Datum, an dem der Kunde die Retoure angelegt hat. |
| return_reason_code | Vom Kunden ausgewählter Retourengrund. Einige Zeilen enthalten absichtlich fehlende oder vage Werte. |
| return_policy_window_days | Policy-Fenster in Tagen. |
| days_after_delivery | Tage zwischen Zustellung und Retourenanfrage. |
| return_center_id | Retourenzentrum, das das Paket empfängt. |
| inbound_carrier | Carrier des Retourenpakets. |
| parcel_received_date | Datum, an dem das Paket im Retourenzentrum empfangen wurde. |
| label_type | Prepaid Label, QR Drop-off, Locker Return, Customer Paid oder Carrier Pickup. |
| expected_refund_dü_date | Kundenbezogenes Refund-Versprechensdatum. |
| late_return_flag | Kennzeichnet, ob die Retoure nach dem Policy-Fenster angelegt wurde. |
| suspected_abuse_flag | Kennzeichnet, ob Kundenverhalten oder Produktmuster ein Abuse-Signal ausgelöst haben. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Inspection_Events

Tabelle der Inspektions- und Triageprozesse im Retourenzentrum.

| Feld | Bedeutung |
| --- | --- |
| inspection_id | Eindeutige generierte Inspection-Kennung. |
| return_id | Zugehörige Retourenkennung. |
| return_center_id | Retourenzentrum, das die Prüfung durchführt. |
| product_id | Produktkennung. |
| product_category | Produktkategorie. |
| inspection_qüü_entry_date | Datum, an dem das Paket in die Inspection Qüü gelangt ist. |
| inspection_start_date | Datum, an dem die Prüfung begonnen hat. |
| inspection_completed_date | Datum, an dem die Prüfung abgeschlossen wurde. |
| qüü_days | Tage zwischen Qüü Entry und Inspection Start. |
| inspection_minutes | Bearbeitungsaufwand in Minuten. |
| inspection_cell | Fast Lane, Standard Check, Technical Check, Refurbishment Desk oder Restricted Goods. |
| initial_condition_code | Zustand bei Paketeingang. |
| final_condition_grade | A, B, C, D oder Scrap nach Prüfung. |
| restockable_flag | Kennzeichnet, ob der Artikel wieder eingelagert oder weitervermarktet werden kann. |
| disposition_decision | Restock as New, Outlet, Refurbish, Liquidate, Vendor Return, Recycle oder Manual Review. |
| valü_decay_days | Tage von Return Creation bis Inspection Completion. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Refund_Transactions

Tabelle des Refund Processing.

| Feld | Bedeutung |
| --- | --- |
| refund_id | Eindeutige generierte Refund-Kennung. |
| return_id | Zugehörige Retourenkennung. |
| customer_id | Kundenkennung. |
| product_id | Produktkennung. |
| refund_reqüsted_date | Datum, an dem der Refund zahlbar wurde oder angefordert wurde. |
| refund_paid_date | Datum, an dem der Refund gezahlt wurde, sofern erfasst. |
| original_line_valü_eur | Ursprünglicher Verkaufswert der retournierten Zeile. |
| refund_amount_eur | An den Kunden gezahlter Refund-Betrag. |
| refund_status | Paid, Pending, Manual Review, Rejected, Chargeback oder Partial Refund. |
| refund_policy_type | Instant Refund, Refund After Carrier Scan, Refund After Receipt, Refund After Inspection oder Manual Review. |
| payment_method | Card, PayPal, Klarna, Gift Card, Bank Transfer oder Marketplace Settlement. |
| manual_review_flag | Kennzeichnet, ob der Refund manüll geprüft werden musste. |
| chargeback_flag | Kennzeichnet, ob ein Chargeback oder Dispute erfasst wurde. |
| refund_lead_time_days | Tage zwischen Return Creation und Refund Payment. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Resale_Disposition

Tabelle zur Wiedervermarktung und Disposition.

| Feld | Bedeutung |
| --- | --- |
| disposition_id | Eindeutige generierte Disposition-Kennung. |
| return_id | Zugehörige Retourenkennung. |
| product_id | Produktkennung. |
| product_category | Produktkategorie. |
| return_center_id | Retourenzentrum, das die Disposition bearbeitet. |
| disposition_decision | Restock as New, Outlet, Refurbish, Liquidate, Vendor Return, Recycle oder Manual Review. |
| decision_date | Datum der Dispositionsentscheidung. |
| available_for_sale_date | Datum, ab dem der Artikel wieder verkaufsfähig war, sofern zutreffend. |
| original_line_valü_eur | Ursprünglicher Verkaufswert. |
| estimated_recovery_valü_eur | Geschätzter Wiederverkaufs- oder Recovery-Wert. |
| valü_loss_eur | Differenz zwischen Originalwert und Recovery-Wert. |
| markdown_pct | Markdown-Prozentsatz gegenüber ursprünglichem Verkaufspreis. |
| refurbishment_cost_eur | Kosten für Refurbishment oder technische Bearbeitung. |
| days_to_remarket | Tage von Return Creation bis Remarketing Availability. |
| resale_channel | Primary Webshop, Outlet Online, Refurbished Store, Liquidation Partner, Vendor Return, Recycle Stream oder Manual Review. |
| write_off_flag | Kennzeichnet, ob der Artikel abgeschrieben oder wirtschaftlich nahezu abgeschrieben wurde. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Capacity_Calendar

Tägliche Kapazitäts- und Backlog-Tabelle für Retourenzentren.

| Feld | Bedeutung |
| --- | --- |
| date | Betriebstag. |
| calendar_week | Fiskalische Kalenderwoche. |
| month | Monat. |
| return_center_id | Retourenzentrumkennung. |
| process_cell | Fast Lane, Standard Check, Technical Check, Refurbishment Desk oder Restricted Goods. |
| planned_capacity_units | Geplante tägliche Bearbeitungskapazität. |
| actual_capacity_units | Tatsächliche tägliche Bearbeitungskapazität. |
| staffing_hours | Verfügbare Personalstunden. |
| inbound_returns_units | Eingehende oder in die Process Cell übergebene Einheiten. |
| processed_units | Bearbeitete Einheiten. |
| backlog_start_units | Backlog zu Tagesbeginn. |
| backlog_end_units | Backlog zu Tagesende. |
| utilization_pct | Bearbeitete Einheiten geteilt durch tatsächliche Kapazität. |
| overtime_hours | Genutzte überstunden. |
| temp_labor_flag | Kennzeichnet, ob temporäre Arbeitskräfte eingesetzt wurden. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Product_Master

Produktreferenzdaten mit Kategorie, Wert, Marge, Saisonalität, Return Propensity, Inspection Effort, Resale Decay und Restockability-Attributen.

### Return_Center_Master

Retourenzentrum-Referenzdaten mit Geografie, Basiskapazität, Arbeitsflexibilität, Technical-Check-Fähigkeit und durchschnittlichen Arbeitskosten.

### Customer_Segments

Kundensegment-Referenzdaten mit Return Propensity, Service Sensitivity, Abuse Risk und Margin Relevance.

### Fulfillment_Center_Master

Outbound Fulfillment Center Referenzdaten.

### Carrier_Master

Inbound Return Carrier Referenzdaten.

### Cost_Parameters

Geschätzte Kosten für Inspection Labor, Storage, Refund Handling, Manual Review, Chargebacks, Write-offs und Customer Service.

### Calendar

Betriebstage, Wochentag, Fiskalwoche, Monat, Campaign Flags, Post-Holiday Flags und Inbound-Return-Multiplikatoren.

### Assumptions

Kurze Erläuterung des synthetischen Datendesigns und der didaktischen Einschränkungen.

## Operative Ereignistypen

| Typ | Typische Interpretation | Analytische Nutzung |
| --- | --- | --- |
| Return authorization | Kunde hat eine Retourenanfrage geöffnet. | Analyse von Retourenquote und Retourengründen. |
| Parcel received | Retourenartikel ist physisch im Retourenzentrum angekommen. | Qüü- und Lead-Time-Analyse. |
| Inspection completed | Artikel wurde bewertet und einem Disposition Path zugeordnet. | Analyse von Kapazität und Prozessperformance. |
| Refund paid | Kunde hat Rückerstattung erhalten. | Analyse von Customer Experience und Cash Risk. |
| Restock as new | Artikel kann erneut zu oder nahe Vollpreis verkauft werden. | Fast-Lane-Opportunity-Analyse. |
| Outlet, refurbish, or liquidate | Artikel benötigt Markdown, Bearbeitung oder Recovery Channel. | Wertverlust- und Prozessdesignanalyse. |

## Analytische Hinweise

- Eine Produktkategorie mit der höchsten Retourenquote ist nicht automatisch das grösste Margenproblem.
- Inspection Backlog sollte nach Process Cell interpretiert werden, nicht nur nach Retourenzentrum.
- Schnelle Refunds können Customer Experience verbessern und zugleich Abuse- und Cash-Risk erhöhen.
- Verspätete Prüfung kann Wiederverkaufswert reduzieren, obwohl der physische Zustand gut ist.
- Ein leerer `exception_code` garantiert nicht, dass eine Zeile korrekt ist.
- Einige Datensätze enthalten absichtlich widersprüchliche oder unvollständige operative Informationen.
