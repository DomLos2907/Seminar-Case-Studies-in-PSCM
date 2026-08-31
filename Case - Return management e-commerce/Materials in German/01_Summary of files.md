# Retourenmanagement im E-Commerce

Diese Fallstudie versetzt Studierende in die Rolle eines Analytics Task Force bei LumaHome Online, einem fiktiven europaeischen Onlinehaendler fuer Bekleidung, Schuhe, Unterhaltungselektronik, Wohnprodukte, Sportartikel und saisonale Sortimente. Das Unternehmen waechst schnell, aber hohe Retourenquoten, begrenzte Pruefkapazitaet und Wertverlust durch verspaetete Wiedervermarktung belasten Profitabilitaet und Kundenerlebnis.

Das Material richtet sich an Studierende im Bereich Produktion, Logistik und Supply Chain Management mit vorhandenen Grundlagen in Datenanalyse. Die Hauptanalyse kann in Excel bearbeitet werden. Python, R, Power BI oder vergleichbare Werkzeuge koennen fuer Datenbereinigung, Modellierung und Visualisierung eingesetzt werden.

## Lernziele

- Retourentreiber anhand von Order Lines, Return Authorizations, Inspection Events, Refund Transactions, Resale Disposition und Kapazitaetsdaten diagnostizieren.
- Kundenserviceversprechen mit Pruefkapazitaet, Backlog, Refund Speed, Resale Recovery und Write-off-Risiko vergleichen.
- Identifizieren, wo Prozessverzoegerungen Wertverlust erzeugen und wo schnellere Triage den groessten Effekt haette.
- Beurteilen, ob Return Policy, Inspection Routing, Staffing, Refurbishment und Remarketing-Entscheidungen geaendert werden sollten.
- Datenbasierte Managementempfehlungen formulieren, die Customer Experience, operative Kapazitaet und finanzielle Recovery ausbalancieren.

## Vorgeschlagenes Kursformat

- Kick-off: Einfuehrung in den Case, Abgrenzung des Analyseumfangs, Rollenverteilung.
- Online-Meeting 1: Datenpruefung und erste Hypothesen zu Retourenquote und Kapazitaet.
- Online-Meeting 2: Analyse von Inspection Backlog, Refund, Resale Recovery und Wertverlust.
- Abschlussveranstaltung in Praesenz: Managementpraesentation und Q&A.

## Dateien

- `01_Summary of files.md`: Ueberblick ueber das Case-Paket.
- `02_Briefing for Team.md`: Abgaben, Meilensteine und Leitfragen.
- `03_Case Description.md`: Fallbeschreibung fuer Studierende.
- `04_Data Dictionary.md`: Felddefinitionen, Retourenlogik und bekannte Einschraenkungen.
- `05_Dataset Summary.md`: Zusammenfassung der Datengenerierung und Validierung.
- `instructor_note.md`: Hinweise fuer Lehrende, moegliche Loesungswege und Moderationshinweise.
- `data/sales_order_lines_part_01_of_07.xlsx` bis `part_07_of_07`: Order-Line-Daten und Retourenexposition.
- `data/return_authorizations_part_01_of_03.xlsx` bis `part_03_of_03`: Retourenanfragen und Wareneingangsrecords.
- `data/inspection_events_part_01_of_03.xlsx` bis `part_03_of_03`: Pruef- und Triageprozesse im Retourenzentrum.
- `data/refund_transactions_part_01_of_03.xlsx` bis `part_03_of_03`: Refund Processing und Manual Review.
- `data/resale_disposition_part_01_of_03.xlsx` bis `part_03_of_03`: Restock, Outlet, Refurbishment, Liquidation, Vendor Return und Recycling.
- `data/capacity_calendar.xlsx`: Taegliche Kapazitaet, Inbound Workload, bearbeitetes Volumen und Backlog im Retourenzentrum.
- `data/reference_tables.xlsx`: Produkt-, Retourenzentrum-, Kundensegment-, Carrier-, Kalender-, Kosten- und Policy-Referenzen.
- `scripts/generate_returns_management_datasets.py`: Reproduzierbarer Generator fuer synthetische Daten.

Falls ein geklontes Repository die Excel-Dateien nicht enthaelt, koennen sie lokal mit dem oben genannten Skript neu erzeugt werden. Der Generator erstellt dieselbe Workbook-Struktur und dieselben Zeilenzahlen.

## Datenumfang

Der Datensatz umfasst ein sechsmonatiges Betriebsfenster in einer E-Commerce-Retourenoperation. Enthalten sind Sales Order Lines, Return Authorizations, Parcel Receipt Dates, Inspection Queues, Condition Grading, Refund Transactions, Resale Decisions, Capacity Calendars, Produktattribute, Retourenzentrumsdaten, Kundensegmente, Carrier, Kostenannahmen und Policy-Parameter. Die Daten enthalten bewusst realistische Datenqualitaetsprobleme wie fehlende Retourengruende, doppelte RMA-Referenzen, inkonsistente Condition Codes, fehlende Receipt- oder Inspection-Daten, negative oder unplausible Refund-Betraege und Remarketing-Records, die interpretiert werden muessen.

Die Datensaetze sind fiktiv und wurden fuer Lehrzwecke generiert. Sie basieren nicht auf vertraulichen Unternehmensdaten.
