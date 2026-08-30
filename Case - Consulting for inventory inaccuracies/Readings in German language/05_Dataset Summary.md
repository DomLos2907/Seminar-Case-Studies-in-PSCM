# Validierungszusammenfassung

Erzeugt am 2026-05-15 für die Norda-Market-Fallstudie zu Bestandsungenauigkeiten.

## Workbook-Prüfungen

| Workbook | Transaktionszeilen | Spalten | Sheets | Größe |
| --- | ---: | ---: | --- | ---: |
| `bakery_inventory_transactions.xlsx` | 600.000 | 28 | Transactions, SKU_Master, Store_Master, Assumptions | 77,4 MB |
| `frozen_inventory_transactions.xlsx` | 600.000 | 28 | Transactions, SKU_Master, Store_Master, Assumptions | 77,5 MB |
| `produce_inventory_transactions.xlsx` | 600.000 | 28 | Transactions, SKU_Master, Store_Master, Assumptions | 76,3 MB |

## Eingebaute didaktische Signale

| Workbook | Zeilen mit sichtbaren exception codes | Zeilen mit negativem Buchbestand nach Bewegung | Waste- und Schwundmengen |
| --- | ---: | ---: | ---: |
| `bakery_inventory_transactions.xlsx` | 31.402 | 15.457 | 1.029.469 |
| `frozen_inventory_transactions.xlsx` | 20.027 | 8.837 | 76.502 |
| `produce_inventory_transactions.xlsx` | 43.519 | 38.940 | 708.022 |

## Hinweise

- Exception codes sind bewusst unvollständig. Leere exception-Zellen bedeuten nicht, dass eine Zeile sauber ist.
- Negative Buchbestände sind bewusst enthalten und sollten diagnostisch interpretiert werden.
- Waste-Niveaus unterscheiden sich strukturell zwischen Sortimenten und sollten vor Managementpriorisierungen normalisiert werden.
- Die ursprünglichen großen Dateien lagen unter GitHubs harter 100-MB-Grenze; die lokal verwendeten Split-Dateien liegen zusätzlich unter 20 MB.
