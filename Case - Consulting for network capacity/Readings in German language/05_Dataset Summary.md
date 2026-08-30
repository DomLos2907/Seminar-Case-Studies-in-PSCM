# Validierungszusammenfassung

Erzeugt am 2026-08-30 für die RheinMain-CargoLink-Fallstudie zur Netzwerkkapazität.

## Workbook-Prüfungen

| Workbook | Hauptzeilen | Spalten | Sheets | Größe |
| --- | ---: | ---: | --- | ---: |
| `shipment_consignments_part_01_of_06.xlsx` | 80.000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9,33 MB |
| `shipment_consignments_part_02_of_06.xlsx` | 80.000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9,33 MB |
| `shipment_consignments_part_03_of_06.xlsx` | 80.000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9,33 MB |
| `shipment_consignments_part_04_of_06.xlsx` | 80.000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9,33 MB |
| `shipment_consignments_part_05_of_06.xlsx` | 80.000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9,33 MB |
| `shipment_consignments_part_06_of_06.xlsx` | 80.000 | 26 | Shipments, Location_Master, Lane_Master, Assumptions, Split_Info | 9,33 MB |
| `linehaul_movements_part_01_of_02.xlsx` | 60.000 | 17 | Linehaul_Movements, Location_Master, Lane_Master, Assumptions, Split_Info | 4,63 MB |
| `linehaul_movements_part_02_of_02.xlsx` | 60.000 | 17 | Linehaul_Movements, Location_Master, Lane_Master, Assumptions, Split_Info | 4,67 MB |
| `daily_location_capacity.xlsx` | 1.980 | 18 | Daily_Location_Capacity, Location_Master, Assumptions | 0,17 MB |
| `daily_lane_capacity.xlsx` | 5.940 | 11 | Daily_Lane_Capacity, Lane_Master, Assumptions | 0,28 MB |
| `daily_service_backlog.xlsx` | 5.940 | 15 | Daily_Service_Backlog, Location_Master, Assumptions | 0,39 MB |
| `reference_tables.xlsx` | 22 Standorte plus Lanes, Kosten und Kalender | n/a | Location_Master, Lane_Master, Cost_Parameters, Calendar, Assumptions | 0,01 MB |

## Eingebaute didaktische Signale

| Datensatz | Sichtbare exception-Zeilen | Zentrales operatives Signal | Signalvolumen |
| --- | ---: | --- | ---: |
| Shipment consignments | 60.244 | Zeilen mit verpasstem Cut-off | 98.265 |
| Shipment consignments | 60.244 | Verspätet gelieferte Sendungen | 68.851 |
| Shipment consignments | 60.244 | Offene Backlog-Sendungen | 9.167 |
| Linehaul movements | 21.307 | Zeilen mit Overflow | 20.828 |
| Linehaul movements | 21.307 | Durchschnittliche Linehaul-Auslastung | 77,6 % |

## Hinweise

- Exception codes sind bewusst unvollständig. Leere exception-Zellen bedeuten nicht, dass eine Zeile sauber ist.
- Kapazitätsengpässe sind bewusst enthalten und sollten diagnostisch interpretiert werden.
- Service Performance unterscheidet sich strukturell nach Service Class, Standortrolle, Lane-Typ und Betriebstag.
- Alle Excel-Dateien liegen unter der gewünschten maximalen Dateigröße von 20 MB.
