# Validierungszusammenfassung

Generiert und validiert am 2026-08-30 fuer die Fallstudie zum Transport Tendering bei Veridian Home & Living.

## Workbook-Pruefung

Der Datensatz enthaelt 683.662 analytische Datensaetze plus Referenztabellen. Die Dateien sind bewusst geteilt, sodass jedes Excel-Workbook unter der gewuenschten Maximalgroesse von 20 MB bleibt. Die groesste Datei ist 12,97 MB.

| Workbook | Hauptzeilen | Spalten | Hauptblatt | Groesse |
| --- | ---: | ---: | --- | ---: |
| `shipment_execution_part_01_of_06.xlsx` | 80.000 | 33 | Shipment_Execution | 12,97 MB |
| `shipment_execution_part_02_of_06.xlsx` | 80.000 | 33 | Shipment_Execution | 12,96 MB |
| `shipment_execution_part_03_of_06.xlsx` | 80.000 | 33 | Shipment_Execution | 12,96 MB |
| `shipment_execution_part_04_of_06.xlsx` | 80.000 | 33 | Shipment_Execution | 12,97 MB |
| `shipment_execution_part_05_of_06.xlsx` | 80.000 | 33 | Shipment_Execution | 12,96 MB |
| `shipment_execution_part_06_of_06.xlsx` | 80.000 | 33 | Shipment_Execution | 12,96 MB |
| `spot_quotes_part_01_of_02.xlsx` | 80.000 | 16 | Spot_Quotes | 5,58 MB |
| `spot_quotes_part_02_of_02.xlsx` | 60.000 | 16 | Spot_Quotes | 4,19 MB |
| `tender_bids.xlsx` | 9.887 | 19 | Tender_Bids | 0,87 MB |
| `lane_awards.xlsx` | 480 | 17 | Lane_Awards | 0,05 MB |
| `carrier_scorecards.xlsx` | 1.295 | 18 | Carrier_Scorecards | 0,14 MB |
| `claims_and_service_failures.xlsx` | 52.000 | 13 | Claims_and_Service_Failures | 3,40 MB |
| `reference_tables.xlsx` | 380 Referenzzeilen | mehrere | Referenzblaetter | 0,03 MB |

## Inhaltspruefung

| Dataset | Validierte Anzahl oder Verteilung |
| --- | --- |
| Shipment execution | 480.000 Zeilen; Accepted 349.491; Rejected by Carrier 66.247; Brokered Spot 26.967; Missed Cutoff 20.152; Manual Override 17.143. |
| Service outcome | 365.275 Shipments puenktlich; 72.406 Missed Appointments; 7.106 Damage-Claim-Flags. |
| Spot exposure | 130.509 Shipments nutzten Spot-, Broker-, Missed-Cutoff- oder manuelle Kapazitaet; positives Spot Premium EUR 85,32 Mio. |
| Freight cost | Vertraglicher Baseline EUR 663,59 Mio.; tatsaechliche Frachtkosten EUR 839,93 Mio. |
| CO2 performance | 203.013 Shipment-Level CO2-Zielverfehlungen; tatsaechliches CO2e 125,50 Mio. kg; Shipment-Level-Ziel 134,99 Mio. kg. |
| Shipment service levels | Standard 203.820; Appointment Critical 146.098; Promotion Critical 77.784; Sustainability Critical 34.521; Express 17.777. |
| Spot quotes | 140.000 Zeilen; Accepted 60.359; Offered 44.073; No Capacity 12.596; Declined 12.538; Expired 10.434. |
| Tender bids | 9.887 Zeilen; Valid 9.587; Conditional 163; Excluded 81; Missing Attachment 56. |
| Lane awards | 480 Zeilen; 120 Primary, 120 Secondary, 120 Backup und 120 Spot Framework Awards. |
| Carrier scorecards | 1.295 woechentliche Carrier-Lane-Group-Zeilen; 643 Zeilen enthalten mindestens einen sichtbaren Exception Code. |
| Claims and service failures | 52.000 Zeilen; Missed Appointment 29.727; Late Delivery 20.525; Damage Claim 1.622; POD Missing 126. |
| Claims impact | Gesamtbetrag aus Claims und Service Failures EUR 31,23 Mio. |

## Eingebaute didaktische Signale

Die generierten Daten enthalten sichtbare und versteckte didaktische Signale:

| Dataset | Gewolltes Signal |
| --- | --- |
| Shipment execution | Niedrige Tenderraten, Tender Rejections, Spot Substitutions, Verspaetungen, Missed Appointments, Accessorial Costs, CO2-Zielverfehlungen. |
| Spot quotes | Spotmarkt-Premiums, Angebotsvariabilitaet, Emergency-Desk-Nutzung, Vergleich ausgewaehlter und nicht ausgewaehlter Quotes. |
| Tender bids | Preisfokussierte Award-Logik, Serviceversprechen, Nachhaltigkeitszusagen, Bid Exclusions, bedingte Kapazitaet. |
| Lane awards | Award Shares, Primary- versus Backup-Allokationen, Penalty Clauses, Sustainability Clauses. |
| Carrier scorecards | Unterschied zwischen tendered, accepted und executed Performance. |
| Claims and service failures | Kundeneffektkosten, Root-Cause-Unklarheit, wiederkehrende Serviceprobleme. |

## Referenztabellen

`reference_tables.xlsx` enthaelt 28 Carrier-Datensaetze, 120 Lane-Datensaetze, 6 Ursprungsstandorte, 5 Kundensegmente, 7 Kostenparameter, 5 Emissionsfaktoren, 181 Kalenderdatensaetze und 6 Annahmen. Gesplittete Workbooks enthalten ebenfalls relevante Referenz- und Annahmenblaetter.

## Hinweise

- Exception Codes sind bewusst unvollstaendig. Leere Exception-Zellen bedeuten nicht, dass eine Zeile sauber ist.
- Carrier Performance unterscheidet sich strukturell nach Lane Group, Kundensegment, Service Level und Peak-Periode.
- Ein Carrier kann auf einem Lane-Typ attraktiv und auf einem anderen problematisch sein.
- Aggregiertes CO2e kann akzeptabel aussehen, obwohl viele Shipment-Level- oder Lane-Level-Ziele verfehlt werden.
- Studierende sollten vermeiden, Carrier anhand der Tenderrate allein zu ranken.
- Alle Excel-Dateien liegen unter der gewuenschten Maximalgroesse von 20 MB.
