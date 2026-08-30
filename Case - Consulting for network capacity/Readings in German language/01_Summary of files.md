# Netzwerkkapazität in der Stückgutlogistik

Diese Fallstudie versetzt Studierende in die Rolle eines Analytics-Task-Force-Teams bei RheinMain CargoLink, einem fiktiven Stückgutdienstleister mit einem Hub-and-Depot-Netzwerk in Deutschland. Das Unternehmen steht unter Druck, Service Levels zu verbessern und zugleich zu entscheiden, ob Kapazität erweitert, anders zugeordnet oder über veränderte operative Regeln gesteuert werden sollte.

Das Material ist für Bachelorstudierende in Logistik und Supply Chain Management konzipiert, die bereits erste Erfahrungen in der Datenanalyse haben. Die zentrale analytische Arbeit kann in Excel durchgeführt werden. Studierende können jedoch auch Python, R, Power BI oder vergleichbare Werkzeuge für Datenbereinigung, Modellierung und Visualisierung einsetzen.

## Lernziele

- Kapazitätsengpässe anhand von Sendungs-, Linehaul-, Standort-, Lane- und Backlog-Daten diagnostizieren.
- Vergleichen, wie Depots, Hubs, Docktore, Yard-Limits und Linehaul-Lanes die Service Performance beeinflussen.
- Wahrscheinliche Prozessursachen für verspätete Sendungen, verpasste Cut-offs, Overflow und Backlog identifizieren.
- Bewerten, ob aktuelle Kapazitätsallokation und operative Regeln zu Serviceausfällen beitragen.
- Datenbasierte Erkenntnisse in Managementempfehlungen übersetzen.

## Vorgeschlagenes Kursformat

- Kick-off: Einführung in Fallstudie, Umfang und Teamrollen.
- Online-Termin 1: Datenprüfung und erste Hypothesen zur Netzwerkkapazität.
- Online-Termin 2: Engpass-, Service-Level-, Backlog- und Kostenwirkungsanalyse.
- Abschlussveranstaltung in Präsenz: Managementpräsentation und Q&A.

## Dateien

- `01_Summary of files.md`: Überblick über das Fallstudienpaket.
- `02_Briefing for Team.md`: Deliverables, Meilensteine und Leitfragen.
- `03_Case Description.md`: Fallbeschreibung für Studierende.
- `04_Data Dictionary.md`: Felddefinitionen, Netzwerklogik und bekannte Einschränkungen.
- `05_Dataset Summary.md`: Zusammenfassung von Datengenerierung und Validierung.
- `instructor_note.md`: Hinweise für Lehrende, mögliche Lösungswege und Moderationsfragen.
- `data/shipment_consignments_part_01_of_06.xlsx` bis `part_06_of_06`: Sendungsdaten auf Consignment-Ebene.
- `data/linehaul_movements_part_01_of_02.xlsx` bis `part_02_of_02`: Linehaul-Bewegungsdaten.
- `data/daily_location_capacity.xlsx`: Standortbezogene Tageskapazität und Auslastung.
- `data/daily_lane_capacity.xlsx`: Tageskapazität je Lane.
- `data/daily_service_backlog.xlsx`: tägliche Service- und Backlog-Daten.
- `data/reference_tables.xlsx`: Referenzdaten zu Standorten, Lanes, Kosten und Kalender.
- `scripts/generate_network_capacity_datasets.py`: reproduzierbarer synthetischer Datengenerator.

Falls die Excel-Dateien in einer geklonten Repository-Version nicht enthalten sind, können sie mit dem oben genannten Skript lokal neu erzeugt werden. Der Generator erzeugt dieselbe Workbook-Struktur und dieselben Zeilenzahlen.

## Umfang des Datensatzes

Der Datensatz umfasst einen dreimonatigen Betriebszeitraum in einem Stückgutnetzwerk. Er enthält 480.000 Sendungsdatensätze auf Consignment-Ebene, 120.000 Linehaul-Bewegungen sowie tägliche Kapazitäts-, Lane-, Service-, Backlog- und Referenzdaten. Die Datensätze enthalten bewusst realistische Datenqualitätsprobleme wie fehlende Werte, uneinheitliche Service-Class-Bezeichnungen, doppelte Consignment-IDs, Kapazitätslücken, Overflow-Ereignisse, verpasste Cut-offs und Ausreißer bei Gewichten.

Die Datensätze sind fiktiv und wurden für Lehrzwecke erzeugt. Sie basieren nicht auf vertraulichen Unternehmensdaten.
