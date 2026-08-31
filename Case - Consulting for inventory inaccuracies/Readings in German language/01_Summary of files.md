# Bestandsungenauigkeiten im Lebensmitteleinzelhandel

Diese Fallstudie versetzt Studierende in die Rolle eines Analytics-Task-Force-Teams bei Norda Market, einem fiktiven mittelgroßen Lebensmitteleinzelhändler mit Filialen in Deutschland. Das Unternehmen steht unter Druck, vermeidbaren Warenverlust zu reduzieren und die Bestandsgenauigkeit in drei operativ unterschiedlichen Sortimenten zu verbessern: Tiefkühlprodukte, Frischobst und -gemüse sowie Bake-off-Backwaren.

Das Material ist für Studierende im Bereich Produktion, Logistik und Supply Chain Management konzipiert, die bereits erste Erfahrungen in der Datenanalyse haben. Die zentrale analytische Arbeit kann in Excel durchgeführt werden. Studierende können jedoch auch Python, R, Power BI oder vergleichbare Werkzeuge für Datenbereinigung, Modellierung und Visualisierung einsetzen.

## Lernziele

- Bestandsungenauigkeiten anhand transaktionsbasierter Warenbewegungen diagnostizieren.
- Vergleichen, wie Haltbarkeit, Nachfrageschwankungen und Handling-Routinen Waste beeinflussen.
- Wahrscheinliche Prozessursachen für Abweichungen zwischen Buchbestand und physischem Bestand identifizieren.
- Bewerten, ob aktuelle Bestell- und Nachschubroutinen zu Schwund und Abschriften beitragen.
- Datenbasierte Erkenntnisse in Managementempfehlungen übersetzen.

## Vorgeschlagenes Kursformat

- Kick-off: Einführung in Fallstudie, Umfang und Teamrollen.
- Online-Termin 1: Datenprüfung und erste Hypothesen zur Bestandsgenauigkeit.
- Online-Termin 2: Waste-, Bestellpolitik- und finanzielle Wirkungsanalyse.
- Abschlussveranstaltung in Präsenz: Managementpräsentation und Q&A.

## Dateien

- `01_Summary of files.md`: Überblick über das Fallstudienpaket.
- `02_Briefing for Team.md`: Deliverables, Meilensteine und Leitfragen.
- `03_Case Description.md`: Fallbeschreibung für Studierende.
- `04_Data Dictionary.md`: Felddefinitionen, Buchungslogik und bekannte Einschränkungen.
- `05_Dataset Summary.md`: Zusammenfassung von Datengenerierung und Validierung.
- `instructor_note.md`: Hinweise für Lehrende, mögliche Lösungswege und Moderationsfragen.
- `data/frozen_inventory_transactions_part_01_of_06.xlsx` bis `part_06_of_06`: Transaktionsdaten für Tiefkühlprodukte.
- `data/produce_inventory_transactions_part_01_of_06.xlsx` bis `part_06_of_06`: Transaktionsdaten für Obst und Gemüse.
- `data/bakery_inventory_transactions_part_01_of_06.xlsx` bis `part_06_of_06`: Transaktionsdaten für Bake-off-Backwaren.
- `scripts/generate_inventory_datasets.py`: reproduzierbarer synthetischer Datengenerator.
- `scripts/split_inventory_workbooks.py`: Werkzeug zur Aufteilung der Workbooks in GitHub-freundliche Dateien.

Falls die Excel-Dateien in einer geklonten Repository-Version nicht enthalten sind, können sie mit den oben genannten Skripten lokal neu erzeugt und aufgeteilt werden. Die Skripte erzeugen dieselbe Workbook-Struktur und dieselben Zeilenzahlen.

## Umfang des Datensatzes

Jedes Sortiment umfasst ungefähr 600.000 Bestandsbewegungen über einen dreimonatigen Betrachtungszeitraum. Die Daten enthalten Verkäufe, Wareneingänge, Umlagerungen, Waste-Buchungen, Schwund, Inventurkorrekturen und manuelle Korrekturbuchungen. Die Datensätze enthalten bewusst realistische Datenqualitätsprobleme wie fehlende Werte, Packgrößenabweichungen, verspätete Buchungen, negative Buchbestände und falsche Vorzeichen.

Die Datensätze sind fiktiv und wurden für Lehrzwecke erzeugt. Sie basieren nicht auf vertraulichen Unternehmensdaten.
