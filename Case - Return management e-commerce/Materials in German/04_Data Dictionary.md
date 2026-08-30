# Datenwoerterbuch

Die Workbooks zum Retourenmanagement folgen derselben didaktischen Logik. Alle Werte sind fiktiv und wurden fuer Lehrzwecke generiert.

## Workbook-Blaetter

### Sales_Order_Lines

Haupttabelle der Order Lines.

| Feld | Bedeutung |
| --- | --- |
| order_line_id | Eindeutige generierte Sales-Order-Line-Kennung. Doppelte Referenzen kommen in ausgewaehlten Zeilen absichtlich vor. |
| order_id | Kundenauftragskennung. |
| order_date | Datum, an dem die Bestellung aufgegeben wurde. |
| delivery_date | Datum, an dem die Bestellung zugestellt wurde. |
| customer_id | Kundenkennung. |
| customer_segment | New, Loyal, Promo Sensitive, High Value, Serial Returner oder Marketplace Guest. |
| sales_channel | Webshop, Mobile App, Marketplace, Social Commerce oder Outlet Online. |
| promotion_type | None, Seasonal Campaign, Size Bundle, Flash Sale, Influencer Drop oder Loyalty Coupon. |
| fulfillment_center_id | Fulfillment Center, das die Bestellung versendet hat. |
| product_id | Produktkennung. Einige Zeilen enthalten absichtlich fehlende Werte. |
| product_category | Apparel, Footwear, Consumer Electronics, Home Living, Sports and Outdoor oder Beauty and Health. |
| product_name | Produktname. |
| size_sensitive_flag | Kennzeichnet, ob Fit-, Groessen- oder Stilunsicherheit die Retourenwahrscheinlichkeit wesentlich beeinflusst. |
| seasonality_index | Relative saisonale Sensitivitaet des Produkts. |
| order_qty | Bestellte Menge. |
| unit_selling_price_eur | Verkaufspreis je Einheit. |
| gross_margin_pct | Naeherungswert der Bruttomarge vor Retoureneffekten. |
| outbound_shipping_cost_eur | Geschaetzte outbound Versandkosten, der Order Line zugeordnet. |
| returned_flag | Kennzeichnet, ob die Zeile im Datensatz eine Return Authorization erzeugt hat. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Return_Authorizations

Tabelle der Retourenanfragen und Parcel Receipts.

| Feld | Bedeutung |
| --- | --- |
| return_id | Eindeutige generierte Retourenkennung. Doppelte RMA-Referenzen kommen in ausgewaehlten Zeilen absichtlich vor. |
| order_line_id | Zugehoerige Order-Line-Kennung. |
| order_id | Zugehoerige Kundenauftragskennung. |
| customer_id | Kundenkennung. |
| product_id | Produktkennung. |
| product_category | Produktkategorie. |
| return_created_date | Datum, an dem der Kunde die Retoure angelegt hat. |
| return_reason_code | Vom Kunden ausgewaehlter Retourengrund. Einige Zeilen enthalten absichtlich fehlende oder vage Werte. |
| return_policy_window_days | Policy-Fenster in Tagen. |
| days_after_delivery | Tage zwischen Zustellung und Retourenanfrage. |
| return_center_id | Retourenzentrum, das das Paket empfaengt. |
| inbound_carrier | Carrier des Retourenpakets. |
| parcel_received_date | Datum, an dem das Paket im Retourenzentrum empfangen wurde. |
| label_type | Prepaid Label, QR Drop-off, Locker Return, Customer Paid oder Carrier Pickup. |
| expected_refund_due_date | Kundenbezogenes Refund-Versprechensdatum. |
| late_return_flag | Kennzeichnet, ob die Retoure nach dem Policy-Fenster angelegt wurde. |
| suspected_abuse_flag | Kennzeichnet, ob Kundenverhalten oder Produktmuster ein Abuse-Signal ausgeloest haben. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Inspection_Events

Tabelle der Inspektions- und Triageprozesse im Retourenzentrum.

| Feld | Bedeutung |
| --- | --- |
| inspection_id | Eindeutige generierte Inspection-Kennung. |
| return_id | Zugehoerige Retourenkennung. |
| return_center_id | Retourenzentrum, das die Pruefung durchfuehrt. |
| product_id | Produktkennung. |
| product_category | Produktkategorie. |
| inspection_queue_entry_date | Datum, an dem das Paket in die Inspection Queue gelangt ist. |
| inspection_start_date | Datum, an dem die Pruefung begonnen hat. |
| inspection_completed_date | Datum, an dem die Pruefung abgeschlossen wurde. |
| queue_days | Tage zwischen Queue Entry und Inspection Start. |
| inspection_minutes | Bearbeitungsaufwand in Minuten. |
| inspection_cell | Fast Lane, Standard Check, Technical Check, Refurbishment Desk oder Restricted Goods. |
| initial_condition_code | Zustand bei Paketeingang. |
| final_condition_grade | A, B, C, D oder Scrap nach Pruefung. |
| restockable_flag | Kennzeichnet, ob der Artikel wieder eingelagert oder weitervermarktet werden kann. |
| disposition_decision | Restock as New, Outlet, Refurbish, Liquidate, Vendor Return, Recycle oder Manual Review. |
| value_decay_days | Tage von Return Creation bis Inspection Completion. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Refund_Transactions

Tabelle des Refund Processing.

| Feld | Bedeutung |
| --- | --- |
| refund_id | Eindeutige generierte Refund-Kennung. |
| return_id | Zugehoerige Retourenkennung. |
| customer_id | Kundenkennung. |
| product_id | Produktkennung. |
| refund_requested_date | Datum, an dem der Refund zahlbar wurde oder angefordert wurde. |
| refund_paid_date | Datum, an dem der Refund gezahlt wurde, sofern erfasst. |
| original_line_value_eur | Urspruenglicher Verkaufswert der retournierten Zeile. |
| refund_amount_eur | An den Kunden gezahlter Refund-Betrag. |
| refund_status | Paid, Pending, Manual Review, Rejected, Chargeback oder Partial Refund. |
| refund_policy_type | Instant Refund, Refund After Carrier Scan, Refund After Receipt, Refund After Inspection oder Manual Review. |
| payment_method | Card, PayPal, Klarna, Gift Card, Bank Transfer oder Marketplace Settlement. |
| manual_review_flag | Kennzeichnet, ob der Refund manuell geprueft werden musste. |
| chargeback_flag | Kennzeichnet, ob ein Chargeback oder Dispute erfasst wurde. |
| refund_lead_time_days | Tage zwischen Return Creation und Refund Payment. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Resale_Disposition

Tabelle zur Wiedervermarktung und Disposition.

| Feld | Bedeutung |
| --- | --- |
| disposition_id | Eindeutige generierte Disposition-Kennung. |
| return_id | Zugehoerige Retourenkennung. |
| product_id | Produktkennung. |
| product_category | Produktkategorie. |
| return_center_id | Retourenzentrum, das die Disposition bearbeitet. |
| disposition_decision | Restock as New, Outlet, Refurbish, Liquidate, Vendor Return, Recycle oder Manual Review. |
| decision_date | Datum der Dispositionsentscheidung. |
| available_for_sale_date | Datum, ab dem der Artikel wieder verkaufsfaehig war, sofern zutreffend. |
| original_line_value_eur | Urspruenglicher Verkaufswert. |
| estimated_recovery_value_eur | Geschaetzter Wiederverkaufs- oder Recovery-Wert. |
| value_loss_eur | Differenz zwischen Originalwert und Recovery-Wert. |
| markdown_pct | Markdown-Prozentsatz gegenueber urspruenglichem Verkaufspreis. |
| refurbishment_cost_eur | Kosten fuer Refurbishment oder technische Bearbeitung. |
| days_to_remarket | Tage von Return Creation bis Remarketing Availability. |
| resale_channel | Primary Webshop, Outlet Online, Refurbished Store, Liquidation Partner, Vendor Return, Recycle Stream oder Manual Review. |
| write_off_flag | Kennzeichnet, ob der Artikel abgeschrieben oder wirtschaftlich nahezu abgeschrieben wurde. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Capacity_Calendar

Taegliche Kapazitaets- und Backlog-Tabelle fuer Retourenzentren.

| Feld | Bedeutung |
| --- | --- |
| date | Betriebstag. |
| calendar_week | Fiskalische Kalenderwoche. |
| month | Monat. |
| return_center_id | Retourenzentrumkennung. |
| process_cell | Fast Lane, Standard Check, Technical Check, Refurbishment Desk oder Restricted Goods. |
| planned_capacity_units | Geplante taegliche Bearbeitungskapazitaet. |
| actual_capacity_units | Tatsaechliche taegliche Bearbeitungskapazitaet. |
| staffing_hours | Verfuegbare Personalstunden. |
| inbound_returns_units | Eingehende oder in die Process Cell uebergebene Einheiten. |
| processed_units | Bearbeitete Einheiten. |
| backlog_start_units | Backlog zu Tagesbeginn. |
| backlog_end_units | Backlog zu Tagesende. |
| utilization_pct | Bearbeitete Einheiten geteilt durch tatsaechliche Kapazitaet. |
| overtime_hours | Genutzte Ueberstunden. |
| temp_labor_flag | Kennzeichnet, ob temporaere Arbeitskraefte eingesetzt wurden. |
| exception_code | Systemhinweis auf ausgewaehlte Anomalien. Leer bedeutet nicht automatisch korrekt. |

### Product_Master

Produktreferenzdaten mit Kategorie, Wert, Marge, Saisonalitaet, Return Propensity, Inspection Effort, Resale Decay und Restockability-Attributen.

### Return_Center_Master

Retourenzentrum-Referenzdaten mit Geografie, Basiskapazitaet, Arbeitsflexibilitaet, Technical-Check-Faehigkeit und durchschnittlichen Arbeitskosten.

### Customer_Segments

Kundensegment-Referenzdaten mit Return Propensity, Service Sensitivity, Abuse Risk und Margin Relevance.

### Fulfillment_Center_Master

Outbound Fulfillment Center Referenzdaten.

### Carrier_Master

Inbound Return Carrier Referenzdaten.

### Cost_Parameters

Geschaetzte Kosten fuer Inspection Labor, Storage, Refund Handling, Manual Review, Chargebacks, Write-offs und Customer Service.

### Calendar

Betriebstage, Wochentag, Fiskalwoche, Monat, Campaign Flags, Post-Holiday Flags und Inbound-Return-Multiplikatoren.

### Assumptions

Kurze Erlaeuterung des synthetischen Datendesigns und der didaktischen Einschraenkungen.

## Operative Ereignistypen

| Typ | Typische Interpretation | Analytische Nutzung |
| --- | --- | --- |
| Return authorization | Kunde hat eine Retourenanfrage geoeffnet. | Analyse von Retourenquote und Retourengruenden. |
| Parcel received | Retourenartikel ist physisch im Retourenzentrum angekommen. | Queue- und Lead-Time-Analyse. |
| Inspection completed | Artikel wurde bewertet und einem Disposition Path zugeordnet. | Analyse von Kapazitaet und Prozessperformance. |
| Refund paid | Kunde hat Rueckerstattung erhalten. | Analyse von Customer Experience und Cash Risk. |
| Restock as new | Artikel kann erneut zu oder nahe Vollpreis verkauft werden. | Fast-Lane-Opportunity-Analyse. |
| Outlet, refurbish, or liquidate | Artikel benoetigt Markdown, Bearbeitung oder Recovery Channel. | Wertverlust- und Prozessdesignanalyse. |

## Analytische Hinweise

- Eine Produktkategorie mit der hoechsten Retourenquote ist nicht automatisch das groesste Margenproblem.
- Inspection Backlog sollte nach Process Cell interpretiert werden, nicht nur nach Retourenzentrum.
- Schnelle Refunds koennen Customer Experience verbessern und zugleich Abuse- und Cash-Risk erhoehen.
- Verspaetete Pruefung kann Wiederverkaufswert reduzieren, obwohl der physische Zustand gut ist.
- Ein leerer `exception_code` garantiert nicht, dass eine Zeile korrekt ist.
- Einige Datensaetze enthalten absichtlich widerspruechliche oder unvollstaendige operative Informationen.
