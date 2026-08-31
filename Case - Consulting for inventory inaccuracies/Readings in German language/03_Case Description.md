# Fallstudie: Kalte Ketten, warme Regale

## Das Bestandsproblem von Norda Market

An einem regnerischen Montagmorgen im April stand Matthias Hillmann, Chief Operations Officer von Norda Market, im Lagerbereich der Filiale 047 in Dortmund und sah zwei Versionen derselben Wahrheit.

Das Filialsystem zeigte 42 Einheiten Tiefkühlspinat auf Bestand. Im Tiefkühlschrank lagen 18. Der Obst- und Gemüsetisch sah schlechter aus. Das System zeigte 31 Mango-Packungen, aber die Abteilungsleitung zählte 7 verkaufsfähige Packungen und 11 beschädigte Packungen, die noch nicht abgeschrieben waren. Am Bake-off-Backwarenstand waren die aufgetauten Backwaren vom Vortag bereits vor Ladenschluss entsorgt worden, aber die Warenverlust-Buchung war nur als generische Abteilungskorrektur erfasst.

Norda Market hatte nicht ein einzelnes Datenproblem. Das Unternehmen hatte drei operative Probleme, die zufällig im selben Bestandssystem sichtbar wurden.

Tiefkühlprodukte liefen sauber entlang der Kühlkette und hatten lange Haltbarkeiten. Warenverlust war niedrig, aber Packgrößenumrechnungen und Umlagerungsbuchungen zwischen Filialen verzerrten gelegentlich Bestandswerte. Frischobst und -gemüse hatten kurze Haltbarkeiten, unregelmäßige Nachfrage und sichtbaren Qualitätsverfall. Warenverlust-Raten waren hoch, aber die Grenze zwischen echter Nachfrageschwankung, schlechter Bestellung und schwacher Bestandsdisziplin war unklar. Bake-off-Backwaren brachten eine zusätzliche Schwierigkeit mit sich: Produkte wurden tiefgekühlt oder gekühlt angeliefert, in der Filiale aufgetaut und gebacken und anschließend als frische Ware mit einem Verkaufshorizont von wenigen Stunden verkauft.

Der Vorstand wollte innerhalb von vier Wochen eine praktische Antwort. Das Unternehmen verlangte kein perfektes akademisches Modell. Es verlangte eine Managementempfehlung, die kritischen Rückfragen standhält.

## Unternehmenshintergrund

Norda Market ist ein fiktiver deutscher Lebensmitteleinzelhändler mit 60 Supermärkten in urbanen, suburbanen und Pendlerlagen. Das Unternehmen positioniert sich zwischen Discountern und Premium-Supermärkten: Es konkurriert über Verfügbarkeit, Frische und lokale Nähe, hält die Preise aber niedrig genug, um Kundenabwanderung zu vermeiden.

Die drei betrachteten Sortimente unterscheiden sich operativ deutlich:

### Tiefkühlprodukte

Tiefkühlprodukte umfassen Pizza, Gemüse, Eiscreme, Fisch, Fertiggerichte und gefrorene Desserts. Die Nachfrage ist relativ stabil, mit stärkerer Wochenendnachfrage und gelegentlichen Aktionsspitzen. Die Haltbarkeit beträgt in der Regel mehrere Monate. Warenverlust sollte daher niedrig sein. Wenn Verluste auftreten, stehen sie häufig in Zusammenhang mit Tiefkühlstörungen, falschen Umlagerungsbuchungen, falsch gezählten Kisten oder Packgrößenfehlern zwischen Kisteneinheiten und Verkaufseinheiten.

Tiefkühlprodukte werden zwei- bis dreimal pro Woche aus einem regionalen Distributionszentrum nachgeliefert. Filialteams erhalten Ware in Kisten und verkaufen in Konsumenteneinheiten. Das ERP-System erfasst sowohl Stückmengen als auch Kistenäquivalente. Operations Manager vermuten, dass einige Bestandsungenauigkeiten aus Umrechnungsfehlern zwischen Kiste und Stück entstehen.

### Frischobst und -gemüse

Obst und Gemüse umfassen Äpfel, Bananen, Beeren, Salate, Tomaten, Paprika, Kräuter, Kartoffeln und saisonales Obst. Die Nachfrage ist volatil und wetterabhängig. Die Haltbarkeit variiert je Artikel typischerweise zwischen zwei und zehn Tagen. Warenverlust entsteht durch sichtbaren Verderb, Beschädigung, Qualitätsabwertung, Zuschnitt und unverkaufte Ware.

Obst und Gemüse werden täglich geliefert. Filialleitungen beeinflussen die Bestellmengen, insbesondere bei Aktions- und wetterabhängigen Produkten. Das Category Management hat historisch höhere Warenverlust-Werte akzeptiert, wenn die Warenpräsentation dadurch reichlich wirkte. Finance stellt nun infrage, ob manche Filialen zu hohe Bestände bei langsam drehenden Obst- und Gemüseartikeln halten.

### Bake-off-Backwaren

Bake-off-Backwaren umfassen Croissants, Brötchen, Baguettes, Brezeln, süße Teilchen und gefüllte Snacks. Viele Artikel kommen tiefgekühlt oder gekühlt an, werden in der Filiale aufgetaut und gebacken und anschließend aus einer Frischetheke verkauft. Nach dem Auftauen oder Backen ist die kommerzielle Haltbarkeit kurz. End-of-day-Warenverlust wird erwartet, aber das Unternehmen glaubt, dass ein Teil davon durch bessere Auftauplanung, präzisere Produktion im Tagesverlauf und stärkere Bestandserfassung vermeidbar ist.

Der Backwarenprozess erzeugt zusätzliche Buchungskomplexität. Eine tiefgekühlte Kiste kann zu Dutzenden frischer Verkaufseinheiten werden. Manche Filialen erfassen das Auftauen als positive Regalbestandsbewegung, andere behandeln es als Produktionsumbuchung. Uneinheitliche Routinen können die eigentliche Schwundursache verdecken.

## Der Auslöser

Das Finance-Team von Norda Market stellte fest, dass die aggregierten Warenverlust-Aufwendungen im vorherigen Quartal gestiegen waren. Store Operations argumentierte, der Anstieg sei teilweise ein Messproblem: Mehr Filialen würden Warenverlust inzwischen korrekt buchen. Das Supply-Chain-Team widersprach. Es vermutete, dass Bestandsungenauigkeiten zu schlechten Nachschubsignalen, überhöhten Sicherheitsbeständen und vermeidbaren Abschriften führten.

Eine interne Prüfung wählte drei Monate transaktionsbasierter Bestandsdaten für die drei Sortimente aus. Die Dateien enthalten Wareneingänge, Verkaufsbewegungen, Warenverlust-Buchungen, Umlagerungen, Schwundbuchungen und Inventurkorrekturen. Die Daten sind nicht sauber. Sie enthalten fehlende Werte, verspätete Buchungen, doppelte Referenzen, negative Buchbestände und auffällige Mengen.

Der Vorstand hat ein externes studentisches Beratungsteam gebeten, eine Frage zu beantworten:

> Wo sollte Norda Market zuerst eingreifen, wenn das Unternehmen die Bestandsgenauigkeit verbessern und vermeidbaren Warenverlust reduzieren möchte, ohne die Produktverfügbarkeit zu beschädigen?

## Die Entscheidung

Matthias Hillmann muss bei der nächsten Vorstandssitzung ein fokussiertes Interventionsprogramm empfehlen. Er hat nicht das Budget, alle Filialprozesse gleichzeitig neu zu gestalten. Er muss wissen, welches Sortiment, welcher Filialcluster, welcher Prozessschritt oder welches Datenqualitätsproblem zuerst adressiert werden sollte.

Das studentische Team muss die verfügbaren Daten nutzen, um eine belastbare Argumentation aufzubauen. Eine starke Antwort identifiziert nicht einfach das Sortiment mit dem höchsten Warenverlust. Sie unterscheidet zwischen strukturellem Warenverlust, der aus dem Sortiment selbst entsteht, und vermeidbarem Warenverlust, der mit Bestandsungenauigkeit, Bestellverhalten oder schwacher Prozesskontrolle zusammenhängt.

## Managementrestriktionen

Die Führung von Norda Market hat fünf Restriktionen festgelegt:

1. Die Verfügbarkeit bei schnell drehenden Artikeln darf nicht ohne Evidenz reduziert werden.
2. Empfehlungen müssen innerhalb von acht Wochen im Filialbetrieb umsetzbar sein.
3. Jede vorgeschlagene Kennzahl muss für Filialmanager verständlich sein.
4. Die Analyse muss Datenqualitätsprobleme soweit möglich von operativer Leistung trennen.
5. Die Abschlusspräsentation muss knapp genug für ein 15-minütiges Managementmeeting sein.

## Verfügbare Daten

Studierende erhalten drei Excel-Workbooks, eines für jedes Sortiment:

- Bestandsbewegungen für Tiefkühlprodukte.
- Bestandsbewegungen für Frischobst und -gemüse.
- Bestandsbewegungen für Bake-off-Backwaren.

Jedes Workbook enthält:

- Ein Transaktionssheet mit ungefähr 600.000 Bewegungsdatensätzen.
- Ein SKU-Master-Sheet mit Produktmerkmalen.
- Ein Store-Master-Sheet mit Standort- und Formatmerkmalen.
- Ein Assumptions-Sheet mit Generierungslogik und didaktischen Hinweisen.

Das Unternehmen warnt, dass nicht jede Bewegung wörtlich genommen werden sollte. Die Daten spiegeln ein operatives System wider, keine bereinigte analytische Tabelle.
