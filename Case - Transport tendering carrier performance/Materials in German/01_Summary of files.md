# Transport Tendering und Carrier Performance

Diese Fallstudie versetzt Studierende in die Rolle eines Analytics Task Force bei Veridian Home & Living, einem fiktiven europaeischen Hersteller und Distributor von Haushaltsgeraeten, Heimwerkerprodukten und saisonalen Konsumguetern. Das Unternehmen vergibt Transportvolumen ueber Jahres- und Mini-Tender an vertraglich gebundene Frachtfuehrer. Die juengste Low-Cost-Sourcing-Strategie hat jedoch einen schwierigen Zielkonflikt zwischen Frachtkosten, Lieferservice, Spotmarkt-Exposition und CO2-Performance erzeugt.

Das Material richtet sich an Bachelorstudierende in Logistik und Supply Chain Management mit vorhandenen Grundlagen in Datenanalyse. Die Hauptanalyse kann in Excel bearbeitet werden. Python, R, Power BI oder vergleichbare Werkzeuge koennen fuer Datenbereinigung, Modellierung und Visualisierung eingesetzt werden.

## Lernziele

- Carrier Performance anhand von Tender Bids, Lane Awards, Shipment Execution, Spot Quotes, Service Failures und Nachhaltigkeitsdaten diagnostizieren.
- Frachtkosteneinsparungen mit Verspaetungen, Tender-Rejections, Spot-Premiums, Claims und CO2-Zielabweichungen vergleichen.
- Identifizieren, wo guenstige vertragliche Carrier versteckte Kosten oder operative Risiken erzeugen.
- Beurteilen, ob Carrier Allocation, Lane Strategy, Mode Choice und Tender Governance geaendert werden sollten.
- Datenbasierte Erkenntnisse in eine Managementempfehlung uebersetzen, die Kosten, Service, Resilienz und Nachhaltigkeit ausbalanciert.

## Vorgeschlagenes Kursformat

- Kick-off: Einfuehrung in den Case, Abgrenzung des Analyseumfangs, Rollenverteilung.
- Online-Meeting 1: Datenpruefung und erste Hypothesen zu Kosten, Service, Spotmarkt und CO2.
- Online-Meeting 2: Carrier Performance, Tender Waterfall, Spotmarkt und Emissionsanalyse.
- Abschlussveranstaltung in Praesenz: Managementpraesentation und Q&A.

## Dateien

- `01_Summary of files.md`: Ueberblick ueber das Case-Paket.
- `02_Briefing for Team.md`: Abgaben, Meilensteine und Leitfragen.
- `03_Case Description.md`: Fallbeschreibung fuer Studierende.
- `04_Data Dictionary.md`: Felddefinitionen, Tenderlogik und bekannte Einschraenkungen.
- `05_Dataset Summary.md`: Zusammenfassung der Datengenerierung und Validierung.
- `instructor_note.md`: Hinweise fuer Lehrende, moegliche Loesungswege und Moderationshinweise.
- `data/shipment_execution_part_01_of_06.xlsx` bis `part_06_of_06`: ausgefuehrte Transportauftraege.
- `data/spot_quotes_part_01_of_02.xlsx` bis `part_02_of_02`: Spotmarktangebote, verknuepft mit Tenderfehlern und dringender Nachfrage.
- `data/tender_bids.xlsx`: Carrier-Angebote nach Lane, Tenderrunde und kommerziellem Angebot.
- `data/lane_awards.xlsx`: vergebene Carrier-Anteile, vertragliche Raten und Servicezusagen.
- `data/carrier_scorecards.xlsx`: woechentliche Carrier Scorecards nach Lane Group.
- `data/claims_and_service_failures.xlsx`: Verspaetungs-, Termin-, Schadens- und Dokumentationsfaelle.
- `data/reference_tables.xlsx`: Carrier-, Lane-, Standort-, Kunden-, Kalender-, Kosten- und Emissionsreferenzen.
- `scripts/generate_transport_tendering_datasets.py`: Reproduzierbarer Generator fuer synthetische Daten.

Falls ein geklontes Repository die Excel-Dateien nicht enthaelt, koennen sie lokal mit dem oben genannten Skript neu erzeugt werden. Der Generator erstellt dieselbe Workbook-Struktur und dieselben Zeilenzahlen.

## Datenumfang

Der Datensatz umfasst ein sechsmonatiges Betriebsfenster in einem europaeischen Transportnetzwerk. Enthalten sind vertragliche Tender Awards, Shipment Execution, Tender Acceptance und Rejection Outcomes, Spot Quotes, Service Failures, Carrier Scorecards, Lane-Attribute, Kundensegmente, Kostenannahmen und CO2-Referenzparameter. Die Daten enthalten bewusst realistische Datenqualitaetsprobleme wie fehlende tatsaechliche Lieferdaten, inkonsistente Lane-Referenzen, doppelte Shipment-Referenzen, negative oder unplausible Spot-Premiums, unvollstaendige Exception Codes und Emissionsdaten, die interpretiert werden muessen.

Die Datensaetze sind fiktiv und wurden fuer Lehrzwecke generiert. Sie basieren nicht auf vertraulichen Unternehmensdaten.
