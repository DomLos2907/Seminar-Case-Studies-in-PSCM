# Datenlexikon

Die drei Transaktionsworkbooks haben dieselbe Struktur. Die Werte sind fiktiv und wurden für Lehrzwecke erzeugt.

## Workbook-Sheets

### Transactions

Zentrale transaktionsbasierte Tabelle der Bestandsbewegungen.

| Feld | Bedeutung |
| --- | --- |
| transaction_id | Eindeutige generierte Bewegungs-ID. |
| assortment | Frozen Food, Fresh Produce oder Bake-off Bakery. |
| store_id | Filialkennung. Einige Zeilen enthalten bewusst fehlende Werte. |
| store_format | Urban, Suburban, Commuter oder Neighborhood. |
| region | Deutscher Regionalcluster. |
| transaction_date | Buchungsdatum im Bestandssystem. |
| document_date | Operatives Belegdatum. Bei verspäteten Buchungen liegt dieses Datum vor dem transaction_date. |
| fiscal_week | Woche innerhalb des Analysezeitraums. |
| sku_id | Produktkennung. Einige Zeilen enthalten bewusst fehlende Werte. |
| warengruppe | Warengruppe. |
| item_name | Artikelname. |
| demand_profile | Dem Artikel zugeordnetes Nachfrageprofil. |
| shelf_life_days | Typische kommerzielle Haltbarkeit in Tagen. |
| units_per_case | Anzahl Verkaufseinheiten pro Kiste. |
| transaction_type | Typ der Bestandsbewegung. |
| movement_direction | Inbound, Outbound, Neutral oder Adjustment. |
| quantity_units | Vorzeichenbehaftete Bewegungsmenge in Verkaufseinheiten. |
| quantity_cases_equiv | Bewegungsmenge in Kistenäquivalenten. |
| book_stock_units_before | Buchbestand vor der Bewegung. |
| book_stock_units_after | Buchbestand nach der Bewegung. |
| book_stock_cases_after | Buchbestand nach der Bewegung in Kistenäquivalenten. |
| observed_count_units | Physisch gezählter Bestand für zählbezogene Zeilen; sonst leer. |
| unit_cost_eur | Interne Kostenschätzung pro Einheit. |
| retail_price_eur | Verkaufspreisschätzung. |
| waste_reason | Waste- oder Schwundgrund, falls zutreffend. |
| source_system | Quellsystem oder Prozesskanal. |
| reference_doc | Operative Referenznummer. Doppelte Referenzen treten bewusst auf. |
| exception_code | Systemhinweis auf ausgewählte Anomalien. Leer bedeutet nicht sauber. |

### SKU_Master

Produktreferenzdaten für das Sortiment.

| Feld | Bedeutung |
| --- | --- |
| sku_id | Produktkennung. |
| assortment | Produktsortiment. |
| warengruppe | Warengruppe. |
| item_name | Artikelname. |
| demand_profile | Zugeordnetes Nachfrageprofil. |
| shelf_life_days | Typische Haltbarkeit. |
| units_per_case | Standardpackgröße. |
| unit_cost_eur | Interne Kostenschätzung pro Einheit. |
| retail_price_eur | Verkaufspreisschätzung. |
| expected_waste_rate | Ungefähre erwartete strukturelle Waste-Rate. |
| replenishment_frequency | Typischer Nachschubrhythmus. |

### Store_Master

Filialreferenzdaten.

| Feld | Bedeutung |
| --- | --- |
| store_id | Filialkennung. |
| store_format | Filialtyp. |
| region | Regionalcluster. |
| sales_area_sqm | Ungefähre Verkaufsfläche. |
| cold_chain_risk | Relativer operativer Risikoindikator. |
| inventory_discipline | Relativer Indikator für Prozessdisziplin. |

### Assumptions

Kurze Erläuterung des synthetischen Datendesigns und der didaktischen Einschränkungen.

## Transaktionstypen

| Typ | Typische Richtung | Interpretation |
| --- | --- | --- |
| SALE | Outbound | Kundenverkaufsbewegung. |
| GOODS_RECEIPT | Inbound | Filiallieferung aus Distributionszentrum oder von Lieferant. |
| TRANSFER_IN | Inbound | Eingang einer Umlagerung aus einer anderen Filiale. |
| TRANSFER_OUT | Outbound | Ausgang einer Umlagerung an eine andere Filiale. |
| WASTE | Outbound | Bekannter Verderb oder Abschreibung. |
| SHRINKAGE | Outbound | Verlust, Beschädigung, Diebstahl oder unklassifizierter Schwund. |
| COUNT_ADJUSTMENT | Adjustment | Differenz zwischen Buchbestand und physischer Zählung. |
| CORRECTION | Adjustment | Manuelle Korrektur eines vorherigen Buchungsfehlers. |
| MARKDOWN | Neutral | Preisreduktionssignal; Menge meist null. |
| THAW_TO_SHELF | Inbound | Backwaren-spezifische Bewegung vom tiefgekühlten/gekühlten Lagerbestand zum frischen Regalbestand. |

## Analytische Hinweise

- Negative Buchbestände sind ein Signal, aber nicht automatisch ein Beleg für Diebstahl oder Waste.
- Ein leerer exception_code bedeutet nicht, dass eine Zeile korrekt ist.
- Verspätete Buchungen können die tägliche Abstimmung von Waste und Verkäufen verzerren.
- Kistenäquivalente sollten gegen units_per_case geprüft werden.
- Waste-Vergleiche zwischen Sortimenten müssen nach Verkäufen, Haltbarkeit und struktureller Verderblichkeit normalisiert werden.
- Inventurkorrekturen können Bestandsungenauigkeit anzeigen, aber auch verspätete Buchungen oder vorher nicht erfassten Waste widerspiegeln.
