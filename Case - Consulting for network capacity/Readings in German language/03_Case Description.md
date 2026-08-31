# Fallstudie: The Bottleneck Network

## Das Kapazitätsproblem von RheinMain CargoLink

An einem kalten Montagmorgen im April öffnete Jana Keller, Chief Operations Officer von RheinMain CargoLink, das wöchentliche Netzwerkdashboard und sah zwei Versionen derselben Wahrheit.

Das Netzwerksystem zeigte für die Vorwoche eine durchschnittliche Gesamtauslastung von 78 Prozent. Die Operations Calls erzählten eine andere Geschichte. Frankfurt meldete Dock-Warteschlangen nach 18:00 Uhr. Köln hatte Trailer vor dem Yard stehen. Der Rhein-Main-Hub hatte auf dem Papier genügend Personal, aber Outbound-Abfahrten Richtung Norden verließen an drei Nächten in Folge verspätet den Standort. Gleichzeitig schickten mehrere kleinere Depots Linehaul-Fahrzeuge mit freier Kapazität auf die Strecke.

RheinMain CargoLink hatte nicht ein einzelnes Kapazitätsproblem. Das Unternehmen hatte mehrere operative Probleme, die zufällig im selben Netzwerkdashboard sichtbar wurden.

Die Handling-Kapazität der Depots war an Spitzentagen knapp, aber nicht immer an denselben Standorten. Die Hub-Kapazität wurde durch regionale Ungleichgewichte und verspätete Inbound-Feeder beeinflusst. Die Linehaul-Kapazität wirkte auf Netzwerkebene ausreichend, aber ausgewählte Lanes zeigten wiederholten Overflow und verpasste Abfahrten. Das Unternehmen hatte genügend Daten, um die Symptome zu sehen, aber noch nicht genügend Sicherheit, um zu entscheiden, wo gehandelt werden sollte.

Der Vorstand wollte innerhalb von vier Wochen eine praktische Antwort. Das Unternehmen verlangte kein perfektes akademisches Modell. Es verlangte eine Managementempfehlung, die kritischen Rückfragen standhält.

## Unternehmenshintergrund

RheinMain CargoLink ist ein fiktiver deutscher Stückgutdienstleister mit regionalen Depots, Satellitendepots, zwei zentralen Hubs und geplanten Linehaul-Verbindungen. Das Unternehmen transportiert palettierte und nicht palettierte Business-to-Business-Sendungen für industrielle Zulieferer, Großhändler, Onlinehändler, Automotive-Zulieferer, Healthcare-Distributoren und regionale Kunden.

Die betrachteten Kapazitätsbereiche unterscheiden sich operativ deutlich:

### Depot Handling

Depots holen Fracht bei Kunden ab, entladen eingehende Fahrzeuge, konsolidieren Sendungen und bereiten den Outbound-Linehaul vor. Die Nachfrage ist ungleich über Wochentage, Regionen und Kundensegmente verteilt. Depot-Handling-Kapazität wird typischerweise in Handling Units pro Tag gemessen. Wenn Serviceprobleme auftreten, stehen sie häufig in Zusammenhang mit verspäteter Frachtbereitschaft, verpassten Cut-offs, unzureichendem Durchsatz am Abend oder unzureichender Steuerung zwischen Inbound- und Outbound-Prozessen.

Depotmanager können Überstunden und temporäre Arbeitskräfte einsetzen, aber diese Maßnahmen helfen nur, wenn Personal der begrenzende Faktor ist. Wenn Docktore oder Yard-Fläche ausgeschöpft sind, führt zusätzliches Personal nicht automatisch zu höherem Durchsatz.

### Hub- und Yard-Kapazität

Die zwei Hubs übernehmen die überregionale Konsolidierung und nächtliche Umschlagsflüsse. Hubs können regionale Ungleichgewichte aufnehmen, aber sie können Verzögerungen auch verstärken, wenn Inbound-Fracht verspätet ankommt. Yard-Kapazität schafft eine zusätzliche Restriktion, weil Trailer und Wechselbrücken Stellfläche benötigen, bevor sie entladen, bereitgestellt und abgefertigt werden können.

Hub-Stau ist schwer zu interpretieren. Ein Hub kann als Problem erscheinen, weil dort Backlog sichtbar wird, obwohl die Ursache in einem überlasteten Origin-Depot oder einer eingeschränkten Inbound-Lane liegt.

### Linehaul-Kapazität

Linehaul-Bewegungen verbinden Depots und Hubs über geplante Abend- und Nachtabfahrten. Kapazität wird in Handling Units je Lane und Abfahrt gemessen. Einige Lanes werden mit eigener Flotte gefahren, andere mit Vertragsdienstleistern oder Spot Capacity. Serviceausfälle können entstehen, wenn Fracht bereitsteht, aber nicht geladen werden kann, wenn eine geplante Abfahrt ausfällt oder wenn Fracht den Cut-off verpasst, bevor Linehaul-Kapazität verfügbar wird.

Linehaul-Kapazität ist kurzfristig teuer. Spot Capacity ist möglich, aber nicht immer auf den Lanes verfügbar, auf denen das Netzwerk sie am dringendsten benötigt.

## Der Auslöser

Das Finance-Team von RheinMain CargoLink stellte fest, dass Verspätungskosten und Ausgaben für Spot Capacity im vorherigen Quartal gestiegen waren. Operations argumentierte, der Anstieg sei teilweise ein Planungsproblem: Frachtvolumina hätten sich zwischen Regionen und Service Classes verschoben. Network Planning widersprach. Es vermutete, dass das Unternehmen mit aggregierten Kapazitätswerten arbeitete, die lokale Engpässe und Timing-Probleme verdeckten.

Eine interne Prüfung wählte drei Monate operativer Netzwerkdaten aus. Die Dateien enthalten Sendungen auf Consignment-Ebene, Linehaul-Bewegungen, tägliche Standortkapazitäten, Lane-Kapazitäten, Service Performance, Backlog-Datensätze und Referenztabellen. Die Daten sind nicht sauber. Sie enthalten fehlende Werte, verspätete Buchungen, doppelte Consignment-IDs, uneinheitliche Service-Class-Bezeichnungen, Gewichtsausreißer, fehlende Kapazitätseinträge und auffällige Auslastungswerte.

Der Vorstand hat ein externes studentisches Beratungsteam gebeten, eine Frage zu beantworten:

> Wo sollte RheinMain CargoLink zuerst eingreifen, wenn das Unternehmen die Service Performance verbessern möchte, ohne unnötige Fixkosten zu erzeugen?

## Die Entscheidung

Jana Keller muss bei der nächsten Vorstandssitzung ein fokussiertes Interventionsprogramm empfehlen. Sie hat nicht das Budget, das gesamte Netzwerk auf einmal zu erweitern. Sie muss wissen, welcher Standort, welche Lane, welcher Prozessschritt, welche Service Class oder welches Datenqualitätsproblem zuerst adressiert werden sollte.

Das studentische Team muss die verfügbaren Daten nutzen, um eine belastbare Argumentation aufzubauen. Eine starke Antwort identifiziert nicht einfach den Standort mit der höchsten Auslastung. Sie unterscheidet zwischen strukturellem Kapazitätsmangel, temporären Ausführungsproblemen, Flussungleichgewicht und Datenqualitätsrauschen.

## Managementrestriktionen

Die Führung von RheinMain CargoLink hat fünf Restriktionen festgelegt:

1. Premium-Fracht darf nicht ohne Evidenz depriorisiert werden.
2. Empfehlungen müssen innerhalb von acht Wochen im Netzwerkbetrieb umsetzbar sein.
3. Jede vorgeschlagene Kennzahl muss für Depot- und Netzwerkmanager verständlich sein.
4. Die Analyse muss Datenqualitätsprobleme soweit möglich von operativer Leistung trennen.
5. Die Abschlusspräsentation muss knapp genug für ein 15-minütiges Managementmeeting sein.

## Verfügbare Daten

Studierende erhalten mehrere Excel-Workbooks zum Stückgutnetzwerk:

- Sendungsdatensätze auf Consignment-Ebene.
- Linehaul-Bewegungsdaten.
- Tägliche Standortkapazitätsdaten.
- Tägliche Lane-Kapazitätsdaten.
- Tägliche Service- und Backlog-Daten.
- Referenztabellen zu Standorten, Lanes, Kosten und Kalender.

Jedes Shipment- und Linehaul-Workbook enthält:

- Ein Hauptdatensheet mit operativen Datensätzen.
- Location- und Lane-Master-Sheets mit Netzwerkmerkmalen.
- Ein Assumptions-Sheet mit Generierungslogik und didaktischen Hinweisen.
- Ein Split-Info-Sheet, soweit zutreffend.

Das Unternehmen warnt, dass nicht jede Bewegung oder jeder Kapazitätsdatensatz wörtlich genommen werden sollte. Die Daten spiegeln ein operatives System wider, keine bereinigte analytische Tabelle.
