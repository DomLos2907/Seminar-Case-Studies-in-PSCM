# Lieferantenzuverlaessigkeit und Materialengpaesse in der Fertigung

Diese Fallstudie versetzt Studierende in die Rolle eines Analytics Task Force bei Asterion Motion Systems, einem fiktiven mittelstaendischen Hersteller elektromechanischer Antriebsmodule fuer Industrieanlagen, Lagerautomatisierung und Nutzfahrzeuge. Das Unternehmen steht unter Druck, Produktionsstoerungen zu reduzieren, die durch verspaetete Lieferungen, Teillieferungen, Qualitaetssperren und Materialengpaesse entstehen.

Das Material richtet sich an Studierende in Logistik und Supply Chain Management mit vorhandenen Grundlagen in Datenanalyse. Die Hauptanalyse kann in Excel bearbeitet werden. Python, R, Power BI oder vergleichbare Werkzeuge koennen fuer Datenbereinigung, Modellierung und Visualisierung eingesetzt werden.

## Lernziele

- Lieferantenzuverlaessigkeit anhand von Bestell-, Wareneingangs-, Engpass- und Produktionsbedarfsdaten diagnostizieren.
- Analysieren, wie Lieferzeit, Lieferantenabhaengigkeit, Materialkritikalitaet und Nachfrageschwankungen das Produktionsrisiko beeinflussen.
- Prozessuale Ursachen fuer verspaetete Lieferungen, Teillieferungen, Qualitaetssperren und Engpassereignisse identifizieren.
- Beurteilen, ob aktuelle Dispositionsparameter und Sourcing-Entscheidungen zu Materialengpaessen beitragen.
- Datenbasierte Erkenntnisse in Managementempfehlungen uebersetzen.

## Vorgeschlagenes Kursformat

- Kick-off: Einfuehrung in den Case, Abgrenzung des Analyseumfangs, Rollenverteilung.
- Online-Meeting 1: Datenpruefung und erste Hypothesen zur Lieferantenzuverlaessigkeit.
- Online-Meeting 2: Analyse von Engpaessen, Lieferzeiten, Dispositionsparametern und Kosteneffekten.
- Abschlussveranstaltung in Praesenz: Managementpraesentation und Q&A.

## Dateien

- `01_Summary of files.md`: Ueberblick ueber das Case-Paket.
- `02_Briefing for Team.md`: Abgaben, Meilensteine und Leitfragen.
- `03_Case Description.md`: Fallbeschreibung fuer Studierende.
- `04_Data Dictionary.md`: Felddefinitionen, Einkaufslogik und bekannte Einschraenkungen.
- `05_Dataset Summary.md`: Zusammenfassung der Datengenerierung und Validierung.
- `instructor_note.md`: Hinweise fuer Lehrende, moegliche Loesungswege und Moderationshinweise.
- `data/purchase_orders_part_01_of_05.xlsx` bis `part_05_of_05`: Bestellpositionsdaten.
- `data/goods_receipts_part_01_of_03.xlsx` bis `part_03_of_03`: Wareneingangsbuchungen.
- `data/production_demand_part_01_of_03.xlsx` bis `part_03_of_03`: Materialbedarfe und Produktionsplandaten.
- `data/shortage_events.xlsx`: Materialengpaesse und Produktionsstoerungen.
- `data/expedite_shipments.xlsx`: Expressfrachten und Notfallbeschaffungen.
- `data/reference_tables.xlsx`: Lieferanten-, Material-, Standort-, Kosten- und Kalenderdaten.
- `scripts/generate_supplier_reliability_datasets.py`: Reproduzierbarer Generator fuer synthetische Daten.

Falls ein geklontes Repository die Excel-Dateien nicht enthaelt, koennen sie lokal mit dem oben genannten Skript neu erzeugt werden. Der Generator erstellt dieselbe Workbook-Struktur und dieselben Zeilenzahlen.

## Datenumfang

Der Datensatz umfasst ein sechsmonatiges Betriebsfenster in einer Fertigungs-Supply-Chain. Enthalten sind Bestellungen, Wareneingaenge, Produktionsbedarfe, Engpassereignisse, Express- und Notfallbeschaffungen, Lieferantenattribute, Materialstammdaten, Standortdaten und Kostenannahmen. Die Daten enthalten bewusst realistische Datenqualitaetsprobleme wie fehlende Lieferantenbestaetigungen, spaete Buchungen, doppelte Bestellpositionsreferenzen, Teillieferungen, inkonsistente Mengeneinheiten, Lieferzeitausreisser und unvollstaendige Root-Cause-Codes.

Die Datensaetze sind fiktiv und wurden fuer Lehrzwecke generiert. Sie basieren nicht auf vertraulichen Unternehmensdaten.
