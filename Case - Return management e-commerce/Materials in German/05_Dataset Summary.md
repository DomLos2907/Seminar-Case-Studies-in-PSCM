# Validierungszusammenfassung

Generiert und validiert am 2026-08-30 fuer die Fallstudie zum Retourenmanagement bei LumaHome Online.

## Workbook-Pruefung

Der Datensatz enthaelt 1.348.620 operative Datensaetze plus Referenztabellen. Die Dateien sind bewusst geteilt, sodass jedes Excel-Workbook unter der gewuenschten Maximalgroesse von 20 MB bleibt. Die groesste Datei ist 8,61 MB.

| Workbook | Hauptzeilen | Spalten | Hauptblatt | Groesse |
| --- | ---: | ---: | --- | ---: |
| `sales_order_lines_part_01_of_07.xlsx` | 80.000 | 20 | Sales_Order_Lines | 8,61 MB |
| `sales_order_lines_part_02_of_07.xlsx` | 80.000 | 20 | Sales_Order_Lines | 8,60 MB |
| `sales_order_lines_part_03_of_07.xlsx` | 80.000 | 20 | Sales_Order_Lines | 8,60 MB |
| `sales_order_lines_part_04_of_07.xlsx` | 80.000 | 20 | Sales_Order_Lines | 8,60 MB |
| `sales_order_lines_part_05_of_07.xlsx` | 80.000 | 20 | Sales_Order_Lines | 8,61 MB |
| `sales_order_lines_part_06_of_07.xlsx` | 80.000 | 20 | Sales_Order_Lines | 8,60 MB |
| `sales_order_lines_part_07_of_07.xlsx` | 40.000 | 20 | Sales_Order_Lines | 4,33 MB |
| `return_authorizations_part_01_of_03.xlsx` | 80.000 | 18 | Return_Authorizations | 7,06 MB |
| `return_authorizations_part_02_of_03.xlsx` | 80.000 | 18 | Return_Authorizations | 7,06 MB |
| `return_authorizations_part_03_of_03.xlsx` | 60.000 | 18 | Return_Authorizations | 5,31 MB |
| `inspection_events_part_01_of_03.xlsx` | 80.000 | 17 | Inspection_Events | 5,91 MB |
| `inspection_events_part_02_of_03.xlsx` | 80.000 | 17 | Inspection_Events | 5,91 MB |
| `inspection_events_part_03_of_03.xlsx` | 60.000 | 17 | Inspection_Events | 4,44 MB |
| `refund_transactions_part_01_of_03.xlsx` | 80.000 | 15 | Refund_Transactions | 5,81 MB |
| `refund_transactions_part_02_of_03.xlsx` | 80.000 | 15 | Refund_Transactions | 5,81 MB |
| `refund_transactions_part_03_of_03.xlsx` | 60.000 | 15 | Refund_Transactions | 4,37 MB |
| `resale_disposition_part_01_of_03.xlsx` | 80.000 | 17 | Resale_Disposition | 7,10 MB |
| `resale_disposition_part_02_of_03.xlsx` | 80.000 | 17 | Resale_Disposition | 7,09 MB |
| `resale_disposition_part_03_of_03.xlsx` | 5.000 | 17 | Resale_Disposition | 0,49 MB |
| `capacity_calendar.xlsx` | 3.620 | 16 | Capacity_Calendar | 0,27 MB |
| `reference_tables.xlsx` | 905 Referenzzeilen | mehrere | Referenzblaetter | 0,06 MB |

## Inhaltspruefung

| Dataset | Validierte Anzahl oder Verteilung |
| --- | --- |
| Sales order lines | 520.000 Zeilen; Apparel 212.937; Footwear 92.054; Home Living 69.220; Consumer Electronics 59.504; Sports and Outdoor 48.057; Beauty and Health 38.228. |
| Return exposure | 220.000 retournierte Zeilen; implizite Line Return Rate 42,3 Prozent. |
| Sales channels | Webshop 197.293; Mobile App 156.075; Marketplace 83.217; Social Commerce 46.938; Outlet Online 36.477. |
| Return authorizations | 220.000 Zeilen; wichtige Gruende sind Size/Fit 68.186; Changed Mind 37.752; Color/Style 24.953; Not as Described 21.663; Late Delivery 11.525; Damaged in Transit 11.469. |
| Return exceptions | 44.240 Return-Zeilen enthalten mindestens einen sichtbaren Exception Code; 20.210 Late Returns; 12.292 Suspected Abuse Flags. |
| Inspection events | 220.000 Zeilen; Fast Lane 153.773; Standard Check 23.568; Technical Check 21.845; Refurbishment Desk 13.311; Restricted Goods 7.503. |
| Inspection outcome | Grade A 99.279; B 51.976; C 36.719; D 22.170; Scrap 9.856; 19.952 Zeilen haben Queue Time ueber sieben Tagen. |
| Refund transactions | 220.000 Zeilen; Paid 197.540; Manual Review 12.520; Partial Refund 6.966; Rejected 2.543; Chargeback 431. |
| Refund impact | Refund Amount insgesamt EUR 27,99 Mio.; durchschnittliche Refund Lead Time 4,69 Tage; 32.689 Manual Review Flags. |
| Resale disposition | 165.000 Zeilen; Restock as New 74.468; Outlet 30.836; Liquidate 20.582; Refurbish 19.432; Vendor Return 10.435; Recycle 9.247. |
| Recovery economics | Recovery Value EUR 11,37 Mio.; Value Loss EUR 10,40 Mio.; 26.225 Write-off Flags. |
| Capacity calendar | 3.620 Zeilen; Backlog Peak 1.205 Einheiten; 677 Capacity-Zeilen enthalten sichtbare Exception Codes. |

## Eingebaute didaktische Signale

Die generierten Daten enthalten sichtbare und versteckte didaktische Signale:

| Dataset | Gewolltes Signal |
| --- | --- |
| Sales order lines | Category Mix, Promotion Effects, Serial-Returner Exposure, Return-Rate-Unterschiede, Gross-Margin-Unterschiede. |
| Return authorizations | Return Reasons, Late Returns, Suspected Abuse, Missing Reasons, Receipt Delays. |
| Inspection events | Queue Delays, Process-Cell-Bottlenecks, Condition Grading, Fast-Lane-Opportunities, Technical-Check-Constraints. |
| Refund transactions | Instant Refunds, Manual Review, Chargebacks, Refund Lead Time, Partial Refund Decisions. |
| Resale disposition | Recovery Value, Markdowns, Refurbishment Costs, Write-offs, Value Decay durch verspaetetes Remarketing. |
| Capacity calendar | Planned versus Actual Capacity, Utilization, Backlog Growth, Overtime, Temporary Labor. |

## Referenztabellen

`reference_tables.xlsx` enthaelt 680 Produktdatensaetze, 4 Retourenzentrumsdatensaetze, 6 Fulfillment-Center-Datensaetze, 8 Carrier-Datensaetze, 6 Kundensegmente, 8 Kostenparameter, 6 Policy-Parameter, 181 Kalenderdatensaetze und 6 Annahmen. Gesplittete Workbooks enthalten ebenfalls relevante Referenz- und Annahmenblaetter.

## Hinweise

- Exception Codes sind bewusst unvollstaendig. Leere Exception-Zellen bedeuten nicht, dass eine Zeile sauber ist.
- Retourenperformance unterscheidet sich strukturell nach Kategorie, Produktwert, Promotion Type, Return Center, Process Cell und Kundensegment.
- Eine hohe Retourenquote ist nicht automatisch die groesste finanzielle Opportunitaet, wenn Recovery Value hoch bleibt.
- Aggregierte Refund Speed kann akzeptabel aussehen, obwohl einzelne Process Cells kostspielige Pruefverzoegerungen aufbauen.
- Studierende sollten vermeiden, pauschale Policy-Aenderungen ohne segmentbezogene Evidenz zu empfehlen.
- Alle Excel-Dateien liegen unter der gewuenschten Maximalgroesse von 20 MB.
