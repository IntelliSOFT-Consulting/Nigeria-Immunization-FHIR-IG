Profile: VaccineStockObservation
Parent: Observation
Id: immz-vaccine-stock-observation
Title: "Vaccine Stock Observation"
Description: "Tracks vaccine or diluent stock balances, receipts, and usage over a reporting period."
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#supply
* code from VaccineDiluentVS (extensible)

* effective[x] only dateTime

* component 6..6

// Slicing component
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slices for vaccine stock data elements by code."

 
* component contains
    openingBalance 1..1 and
    received 1..1 and
    dosesOpened 1..1 and
    endingBalance 1..1 and
    quantityReturned 1..1 and
    emptyVialsReturned 1..1

* component[openingBalance].code = VACCINE_STOCK#opening-balance "Opening balance"
* component[openingBalance].valueQuantity 1..1 MS

* component[received].code = VACCINE_STOCK#received "Doses received"
* component[received].valueQuantity 1..1 MS

* component[dosesOpened].code = VACCINE_STOCK#doses-opened "Doses opened"
* component[dosesOpened].valueQuantity 1..1 MS

* component[endingBalance].code = VACCINE_STOCK#ending-balance "Ending balance"
* component[endingBalance].valueQuantity 1..1 MS

* component[quantityReturned].code = VACCINE_STOCK#returned "Quantity returned"
* component[quantityReturned].valueQuantity 1..1 MS

* component[emptyVialsReturned].code = VACCINE_STOCK#empty-vials "Empty vials returned"
* component[emptyVialsReturned].valueQuantity 1..1 MS




Instance: ExampleBCGVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - BCG Vaccine Stock"
Description: "Example record of BCG vaccine stock tracking."
Usage: #example

* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE1 "BCG Vaccines"
* effectiveDateTime = "2025-08-07"

* component[openingBalance].valueQuantity = 100 'vial'
* component[received].valueQuantity = 50 'vial'
* component[dosesOpened].valueQuantity = 60 'vial'
* component[endingBalance].valueQuantity = 90 'vial'
* component[quantityReturned].valueQuantity = 2 'vial'
* component[emptyVialsReturned].valueQuantity = 58 'vial'



Instance: ExampleBCGDiluentStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - BCG Diluent Stock"
Description: "Example record of BCG diluent stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE8 "BCG Diluents"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 80 'vial'
* component[received].valueQuantity = 40 'vial'
* component[dosesOpened].valueQuantity = 50 'vial'
* component[endingBalance].valueQuantity = 70 'vial'
* component[quantityReturned].valueQuantity = 2 'vial'
* component[emptyVialsReturned].valueQuantity = 48 'vial'

Instance: ExampleHepBVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Hep B Vaccine Stock"
Description: "Example record of Hepatitis B vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE15 "Hep B vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 120 'vial'
* component[received].valueQuantity = 30 'vial'
* component[dosesOpened].valueQuantity = 40 'vial'
* component[endingBalance].valueQuantity = 110 'vial'
* component[quantityReturned].valueQuantity = 1 'vial'
* component[emptyVialsReturned].valueQuantity = 39 'vial'

Instance: ExampleOPVVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - OPV Vaccine Stock"
Description: "Example record of OPV vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE22 "OPV Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 90 'vial'
* component[received].valueQuantity = 20 'vial'
* component[dosesOpened].valueQuantity = 25 'vial'
* component[endingBalance].valueQuantity = 85 'vial'
* component[quantityReturned].valueQuantity = 3 'vial'
* component[emptyVialsReturned].valueQuantity = 22 'vial'

Instance: ExamplePENTAVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - PENTA Vaccine Stock"
Description: "Example record of PENTA vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE29 "PENTA Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 140 'vial'
* component[received].valueQuantity = 60 'vial'
* component[dosesOpened].valueQuantity = 70 'vial'
* component[endingBalance].valueQuantity = 130 'vial'
* component[quantityReturned].valueQuantity = 4 'vial'
* component[emptyVialsReturned].valueQuantity = 66 'vial'

Instance: ExamplePCVVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - PCV Vaccine Stock"
Description: "Example record of PCV vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE36 "PCV Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 110 'vial'
* component[received].valueQuantity = 45 'vial'
* component[dosesOpened].valueQuantity = 50 'vial'
* component[endingBalance].valueQuantity = 105 'vial'
* component[quantityReturned].valueQuantity = 2 'vial'
* component[emptyVialsReturned].valueQuantity = 48 'vial'

Instance: ExampleIPVVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - IPV Vaccine Stock"
Description: "Example record of IPV vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE43 "IPV Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 100 'vial'
* component[received].valueQuantity = 50 'vial'
* component[dosesOpened].valueQuantity = 60 'vial'
* component[endingBalance].valueQuantity = 90 'vial'
* component[quantityReturned].valueQuantity = 5 'vial'
* component[emptyVialsReturned].valueQuantity = 55 'vial'

Instance: ExampleRotavirusVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Rotavirus Vaccine Stock"
Description: "Example record of Rotavirus vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE50 "Rotavirus Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 130 'vial'
* component[received].valueQuantity = 70 'vial'
* component[dosesOpened].valueQuantity = 80 'vial'
* component[endingBalance].valueQuantity = 120 'vial'
* component[quantityReturned].valueQuantity = 3 'vial'
* component[emptyVialsReturned].valueQuantity = 77 'vial'

Instance: ExampleMeaslesVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Measles Vaccine Stock"
Description: "Example record of Measles vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE57 "Measles Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 100 'vial'
* component[received].valueQuantity = 50 'vial'
* component[dosesOpened].valueQuantity = 60 'vial'
* component[endingBalance].valueQuantity = 90 'vial'
* component[quantityReturned].valueQuantity = 2 'vial'
* component[emptyVialsReturned].valueQuantity = 58 'vial'

Instance: ExampleMeaslesDiluentStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Measles Diluent Stock"
Description: "Example record of Measles diluent stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE64 "Measles Diluents"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 95 'vial'
* component[received].valueQuantity = 40 'vial'
* component[dosesOpened].valueQuantity = 55 'vial'
* component[endingBalance].valueQuantity = 80 'vial'
* component[quantityReturned].valueQuantity = 1 'vial'
* component[emptyVialsReturned].valueQuantity = 54 'vial'

Instance: ExampleYellowFeverVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Yellow Fever Vaccine Stock"
Description: "Example record of Yellow Fever vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE71 "Yellow Fever Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 100 'vial'
* component[received].valueQuantity = 60 'vial'
* component[dosesOpened].valueQuantity = 70 'vial'
* component[endingBalance].valueQuantity = 90 'vial'
* component[quantityReturned].valueQuantity = 2 'vial'
* component[emptyVialsReturned].valueQuantity = 68 'vial'

Instance: ExampleYellowFeverDiluentStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Yellow Fever Diluent Stock"
Description: "Example record of Yellow Fever diluent stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE78 "Yellow Fever Diluent"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 85 'vial'
* component[received].valueQuantity = 30 'vial'
* component[dosesOpened].valueQuantity = 40 'vial'
* component[endingBalance].valueQuantity = 75 'vial'
* component[quantityReturned].valueQuantity = 1 'vial'
* component[emptyVialsReturned].valueQuantity = 39 'vial'

Instance: ExampleMenAVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Men A Vaccine Stock"
Description: "Example record of Men A vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE85 "Men A Vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 115 'vial'
* component[received].valueQuantity = 50 'vial'
* component[dosesOpened].valueQuantity = 55 'vial'
* component[endingBalance].valueQuantity = 110 'vial'
* component[quantityReturned].valueQuantity = 3 'vial'
* component[emptyVialsReturned].valueQuantity = 52 'vial'

Instance: ExampleMenADiluentStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Men A Diluent Stock"
Description: "Example record of Men A diluent stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE92 "Men A Diluents"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 100 'vial'
* component[received].valueQuantity = 40 'vial'
* component[dosesOpened].valueQuantity = 45 'vial'
* component[endingBalance].valueQuantity = 95 'vial'
* component[quantityReturned].valueQuantity = 1 'vial'
* component[emptyVialsReturned].valueQuantity = 44 'vial'

Instance: ExampleHPVVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - HPV Vaccine Stock"
Description: "Example record of HPV vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE99 "HPV vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 105 'vial'
* component[received].valueQuantity = 30 'vial'
* component[dosesOpened].valueQuantity = 35 'vial'
* component[endingBalance].valueQuantity = 100 'vial'
* component[quantityReturned].valueQuantity = 1 'vial'
* component[emptyVialsReturned].valueQuantity = 33 'vial'

Instance: ExampleTDVaccineStockObservation
InstanceOf: VaccineStockObservation
Title: "Example - Td Vaccine Stock"
Description: "Example record of Td vaccine stock tracking."
Usage: #example
* status = #final
* code = VACCINE_STOCK#IMMZ.I.DE106 "Td vaccine"
* effectiveDateTime = "2025-08-07"
* component[openingBalance].valueQuantity = 100 'vial'
* component[received].valueQuantity = 50 'vial'
* component[dosesOpened].valueQuantity = 55 'vial'
* component[endingBalance].valueQuantity = 95 'vial'
* component[quantityReturned].valueQuantity = 2 'vial'
* component[emptyVialsReturned].valueQuantity = 53 'vial'

