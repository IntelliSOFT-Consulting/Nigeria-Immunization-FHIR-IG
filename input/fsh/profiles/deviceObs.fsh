Profile: DeviceMaterialObservation
Parent: Observation
Id: immz-device-material-observation
Title: "Device/Material Usage Observation"
Description: "Tracks usage and stock of devices and materials used in immunization delivery over a reporting period."

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#supply
* code from DeviceMaterialCodeVS (extensible) 
* encounter 1..1
* encounter only Reference(NEIREncounter)
* effective[x] only dateTime

* component 8..8

// Slicing component
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slices for device/material stock data elements by code."

* component contains
    openingBalance 1..1 and
    received 1..1 and
    quantityUsed 1..1 and
    closingBalance 1..1 and
    quantityReturned 1..1 and
    status 1..1 and
    functional 1..1 and
    nonFunctional 1..1

* component[openingBalance].code = DEVICE_MATERIAL#opening-balance "Opening balance"
* component[openingBalance].valueQuantity 1..1 MS

* component[received].code = DEVICE_MATERIAL#quantity-received "Quantity received"
* component[received].valueQuantity 1..1 MS

* component[quantityUsed].code = DEVICE_MATERIAL#quantity-used "Quantity used"
* component[quantityUsed].valueQuantity 1..1 MS

* component[closingBalance].code = DEVICE_MATERIAL#closing-balance "Closing balance"
* component[closingBalance].valueQuantity 1..1 MS

* component[quantityReturned].code = DEVICE_MATERIAL#quantity-returned "Quantity returned"
* component[quantityReturned].valueQuantity 1..1 MS

* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept 1..1 MS
* component[status].valueCodeableConcept from DeviceMaterialCodeVS (required)


* component[functional].code = DEVICE_MATERIAL#functional-devices "Functional devices"
* component[functional].valueQuantity 1..1 MS

* component[functional].code = DEVICE_MATERIAL#functional-devices "Functional devices"
* component[functional].valueQuantity 1..1 MS

* component[nonFunctional].code = DEVICE_MATERIAL#non-functional-devices "Non-functional devices"
* component[nonFunctional].valueQuantity 1..1 MS





Instance: ExampleBCGSyringesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - BCG Syringes Stock"
Description: "Example record of BCG Syringes stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#bcg-syringes "BCG syringes"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample) 

* component[openingBalance].valueQuantity = 100 'vial'
* component[received].valueQuantity = 50 'vial'
* component[quantityUsed].valueQuantity = 20 'vial'
* component[closingBalance].valueQuantity = 90 'vial'
* component[quantityReturned].valueQuantity = 2 'vial'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 58 'vial'
* component[nonFunctional].valueQuantity = 8 'vial'


Instance: Example2mlSyringesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - 2ml Syringes Stock"
Description: "Example record of 2ml Syringes stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#2ml-syringes "2ml Syringes"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity = 120 'item'
* component[received].valueQuantity = 30 'item'
* component[quantityUsed].valueQuantity = 40 'item'
* component[closingBalance].valueQuantity = 110 'item'
* component[quantityReturned].valueQuantity = 0 'item'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 105 'item'
* component[nonFunctional].valueQuantity = 5 'item'


Instance: ExampleADSyringesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - AD Syringes Stock"
Description: "Example record of Auto-Disable Syringes stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#ad-syringes "AD Syringes"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity = 200 'item'
* component[received].valueQuantity = 100 'item'
* component[quantityUsed].valueQuantity = 90 'item'
* component[closingBalance].valueQuantity = 210 'item'
* component[quantityReturned].valueQuantity = 0 'item'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 205 'item'
* component[nonFunctional].valueQuantity = 5 'item'

Instance: ExampleIcePacksStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - Ice Packs Stock"
Description: "Example record of Ice Packs stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#ice-packs "Ice Packs"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity = 60 'item'
* component[received].valueQuantity = 20 'item'
* component[quantityUsed].valueQuantity = 15 'item'
* component[closingBalance].valueQuantity = 65 'item'
* component[quantityReturned].valueQuantity = 0 'item'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 63 'item'
* component[nonFunctional].valueQuantity = 2 'item'


Instance: ExampleVaccineCarrierStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - Vaccine Carrier Stock"
Description: "Example record of Vaccine Carriers stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#vaccine-carrier "Vaccine Carrier"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity = 15 'item'
* component[received].valueQuantity = 5 'item'
* component[quantityUsed].valueQuantity = 4 'item'
* component[closingBalance].valueQuantity = 16 'item'
* component[quantityReturned].valueQuantity = 1 'item'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 14 'item'
* component[nonFunctional].valueQuantity = 2 'item'

Instance: ExampleColdBoxesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - Cold Boxes Stock"
Description: "Example record of Cold Boxes stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#cold-boxes "Cold Boxes"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity = 10 'item'
* component[received].valueQuantity = 2 'item'
* component[quantityUsed].valueQuantity = 1 'item'
* component[closingBalance].valueQuantity = 11 'item'
* component[quantityReturned].valueQuantity = 0 'item'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 10 'item'
* component[nonFunctional].valueQuantity = 1 'item'


Instance: ExampleVaccineFridgesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - Vaccine Fridges Stock"
Description: "Example record of Vaccine Fridges stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#vaccine-fridges "Vaccine Fridges"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity = 5 'item'
* component[received].valueQuantity = 1 'item'
* component[quantityUsed].valueQuantity = 0 'item'
* component[closingBalance].valueQuantity = 6 'item'
* component[quantityReturned].valueQuantity = 0 'item'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 6 'item'
* component[nonFunctional].valueQuantity = 0 'item'

Instance: ExampleMUACStripesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - MUAC Stripes Stock"
Description: "Example record of MUAC Stripes stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#muac-stripes "MUAC Stripes"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity = 80 'item'
* component[received].valueQuantity = 30 'item'
* component[quantityUsed].valueQuantity = 20 'item'
* component[closingBalance].valueQuantity = 90 'item'
* component[quantityReturned].valueQuantity = 0 'item'
* component[status].code = DEVICE_MATERIAL#functional "Functional"
* component[status].valueCodeableConcept = DEVICE_MATERIAL#functional "Functional"
* component[functional].valueQuantity = 88 'item'
* component[nonFunctional].valueQuantity = 2 'item'
