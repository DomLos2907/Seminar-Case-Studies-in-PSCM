# Validierungszusammenfassung

Generiert und validiert am 2026-08-30 fuer die Fallstudie zur Lieferantenzuverlaessigkeit bei Asterion Motion Systems.

## Workbook-Pruefung

Der Datensatz enthaelt 934.000 operative Datensaetze plus Referenztabellen. Die Dateien sind bewusst geteilt, sodass jedes Excel-Workbook unter der gewuenschten Maximalgroesse von 20 MB bleibt. Die groesste Datei ist 10,40 MB.

| Workbook | Hauptzeilen | Spalten | Hauptblatt | Groesse |
| --- | ---: | ---: | --- | ---: |
| `purchase_orders_part_01_of_05.xlsx` | 80.000 | 27 | Purchase_Orders | 10,38 MB |
| `purchase_orders_part_02_of_05.xlsx` | 80.000 | 27 | Purchase_Orders | 10,40 MB |
| `purchase_orders_part_03_of_05.xlsx` | 80.000 | 27 | Purchase_Orders | 10,38 MB |
| `purchase_orders_part_04_of_05.xlsx` | 80.000 | 27 | Purchase_Orders | 10,38 MB |
| `purchase_orders_part_05_of_05.xlsx` | 80.000 | 27 | Purchase_Orders | 10,39 MB |
| `goods_receipts_part_01_of_03.xlsx` | 80.000 | 16 | Goods_Receipts | 6,35 MB |
| `goods_receipts_part_02_of_03.xlsx` | 80.000 | 16 | Goods_Receipts | 6,35 MB |
| `goods_receipts_part_03_of_03.xlsx` | 80.000 | 16 | Goods_Receipts | 6,34 MB |
| `production_demand_part_01_of_03.xlsx` | 80.000 | 17 | Production_Demand | 6,42 MB |
| `production_demand_part_02_of_03.xlsx` | 80.000 | 17 | Production_Demand | 6,42 MB |
| `production_demand_part_03_of_03.xlsx` | 80.000 | 17 | Production_Demand | 6,42 MB |
| `shortage_events.xlsx` | 32.000 | 17 | Shortage_Events | 2,57 MB |
| `expedite_shipments.xlsx` | 22.000 | 14 | Expedite_Shipments | 1,61 MB |
| `reference_tables.xlsx` | 654 Referenzzeilen | mehrere | Referenzblaetter | 0,04 MB |

## Inhaltspruefung

| Dataset | Validierte Anzahl oder Verteilung |
| --- | --- |
| Purchase orders | 400.000 Zeilen; On Time 260.758; Late 84.929; Partial 33.416; Quality Hold 15.720; Open 2.771; Cancelled 2.406. |
| Exception Codes in Purchase Orders | 100.929 Zeilen enthalten mindestens einen sichtbaren Exception Code. Leere Zellen bedeuten nicht, dass eine Zeile sauber ist. |
| Goods receipts | 240.000 Zeilen; Released 222.684; Inspection 4.390; Blocked 4.383; Rejected 4.372; Rework 4.171. |
| Exception Codes in Goods Receipts | 31.417 Zeilen enthalten mindestens einen sichtbaren Exception Code. |
| Production demand | 240.000 Zeilen; 52.499 Zeilen tragen ein Production-Risk-Flag; 13.560 Zeilen enthalten mindestens einen sichtbaren Exception Code. |
| Shortage events | 32.000 Zeilen; Resolved 27.670; Open 3.845; Data Review 485. |
| Root Causes der Engpaesse | Supplier Delay 10.555; Planning Parameter 5.122; Quality Hold 5.017; Partial Delivery 4.469; Demand Spike 3.202; Unknown 2.328; Master Data 1.307. |
| Expedite shipments | 22.000 Zeilen; gesamte Expedite-Kosten EUR 62,40 Mio. |
| Shortage impact | Geschaetzte Engpasskosten insgesamt EUR 1,28 Mrd. |

## Eingebaute didaktische Signale

Die generierten Daten enthalten sichtbare und versteckte didaktische Signale:

| Dataset | Gewolltes Signal |
| --- | --- |
| Purchase orders | Verspaetete Lieferungen, Teillieferungen, fehlende Bestaetigungen, inkonsistente Mengeneinheiten, Lieferzeitausreisser. |
| Goods receipts | Spaete Buchungen, abgelehnte Mengen, Qualitaetssperren, doppelte Referenzdokumente. |
| Production demand | Nachfragespitzen, veraltete Sicherheitsbestandsparameter, Exposition von Line-Stopper-Materialien. |
| Shortage events | Produktionsstoerung, Stillstandskosten, Root-Cause-Unklarheit, Eskalationsmuster. |
| Expedite shipments | Premiumfrachtkosten, Notfallbeschaffung, eingesparte Tage, vermiedene Stillstandszeit. |

## Referenztabellen

`reference_tables.xlsx` enthaelt 95 Lieferantendatensaetze, 360 Materialdatensaetze, 6 Standortdatensaetze, 7 Kostenparameter, 181 Kalenderdatensaetze und 5 Annahmen. Gesplittete Workbooks enthalten ebenfalls relevante Referenz- und Annahmenblaetter.

## Hinweise

- Exception Codes sind bewusst unvollstaendig. Leere Exception-Zellen bedeuten nicht, dass eine Zeile sauber ist.
- Engpassereignisse sind bewusst enthalten und sollen diagnostisch interpretiert werden.
- Lieferantenperformance unterscheidet sich strukturell nach Materialgruppe, Kritikalitaet, Standort und Nachfragemuster.
- Studierende sollten vermeiden, Lieferanten anhand einer einzigen unadjustierten KPI zu ranken.
- Alle Excel-Dateien liegen unter der gewuenschten Maximalgroesse von 20 MB.
