Profile: DeviceMaterialObservation
Parent: Observation
Id: DeviceMaterialObservation
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
* component[openingBalance].valueQuantity.value = 15
* component[openingBalance].valueQuantity.unit = "item"
* component[openingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[openingBalance].valueQuantity.code = #item

* component[received].valueQuantity.value = 5
* component[received].valueQuantity.unit = "item"
* component[received].valueQuantity.system = "http://unitsofmeasure.org"
* component[received].valueQuantity.code = #item

* component[quantityUsed].valueQuantity.value = 4
* component[quantityUsed].valueQuantity.unit = "item"
* component[quantityUsed].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityUsed].valueQuantity.code = #item

* component[closingBalance].valueQuantity.value = 16
* component[closingBalance].valueQuantity.unit = "item"
* component[closingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[closingBalance].valueQuantity.code = #item

* component[quantityReturned].valueQuantity.value = 1
* component[quantityReturned].valueQuantity.unit = "item"
* component[quantityReturned].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityReturned].valueQuantity.code = #item

* component[status].valueCodeableConcept.coding.system = DEVICE_MATERIAL
* component[status].valueCodeableConcept.coding.code = #functional
* component[status].valueCodeableConcept.coding.display = "Functional"


* component[functional].valueQuantity.value = 14
* component[functional].valueQuantity.unit = "item"
* component[functional].valueQuantity.system = "http://unitsofmeasure.org"
* component[functional].valueQuantity.code = #item

* component[nonFunctional].valueQuantity.value = 2
* component[nonFunctional].valueQuantity.unit = "item"
* component[nonFunctional].valueQuantity.system = "http://unitsofmeasure.org"
* component[nonFunctional].valueQuantity.code = #item


Instance: ExampleColdBoxesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - Cold Boxes Stock"
Description: "Example record of Cold Boxes stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#cold-boxes "Cold Boxes"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity.value = 10
* component[openingBalance].valueQuantity.unit = "item"
* component[openingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[openingBalance].valueQuantity.code = #{item}

* component[received].valueQuantity.value = 2
* component[received].valueQuantity.unit = "item"
* component[received].valueQuantity.system = "http://unitsofmeasure.org"
* component[received].valueQuantity.code = #{item}

* component[quantityUsed].valueQuantity.value = 1
* component[quantityUsed].valueQuantity.unit = "item"
* component[quantityUsed].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityUsed].valueQuantity.code = #{item}

* component[closingBalance].valueQuantity.value = 11
* component[closingBalance].valueQuantity.unit = "item"
* component[closingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[closingBalance].valueQuantity.code = #{item}

* component[quantityReturned].valueQuantity.value = 0
* component[quantityReturned].valueQuantity.unit = "item"
* component[quantityReturned].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityReturned].valueQuantity.code = #{item}

* component[status].valueCodeableConcept.coding.system = DEVICE_MATERIAL 
* component[status].valueCodeableConcept.coding.code = #functional
* component[status].valueCodeableConcept.coding.display = "Functional"

* component[functional].valueQuantity.value = 10
* component[functional].valueQuantity.unit = "item"
* component[functional].valueQuantity.system = "http://unitsofmeasure.org"
* component[functional].valueQuantity.code = #{item}

* component[nonFunctional].valueQuantity.value = 1
* component[nonFunctional].valueQuantity.unit = "item"
* component[nonFunctional].valueQuantity.system = "http://unitsofmeasure.org"
* component[nonFunctional].valueQuantity.code = #{item}



Instance: ExampleVaccineFridgesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - Vaccine Fridges Stock"
Description: "Example record of Vaccine Fridges stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#vaccine-fridges "Vaccine Fridges"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity.value = 10
* component[openingBalance].valueQuantity.unit = "item"
* component[openingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[openingBalance].valueQuantity.code = #{item}

* component[received].valueQuantity.value = 2
* component[received].valueQuantity.unit = "item"
* component[received].valueQuantity.system = "http://unitsofmeasure.org"
* component[received].valueQuantity.code = #{item}

* component[quantityUsed].valueQuantity.value = 1
* component[quantityUsed].valueQuantity.unit = "item"
* component[quantityUsed].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityUsed].valueQuantity.code = #{item}

* component[closingBalance].valueQuantity.value = 11
* component[closingBalance].valueQuantity.unit = "item"
* component[closingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[closingBalance].valueQuantity.code = #{item}

* component[quantityReturned].valueQuantity.value = 0
* component[quantityReturned].valueQuantity.unit = "item"
* component[quantityReturned].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityReturned].valueQuantity.code = #{item}

* component[status].valueCodeableConcept.coding.system = DEVICE_MATERIAL 
* component[status].valueCodeableConcept.coding.code = #functional
* component[status].valueCodeableConcept.coding.display = "Functional"

* component[functional].valueQuantity.value = 10
* component[functional].valueQuantity.unit = "item"
* component[functional].valueQuantity.system = "http://unitsofmeasure.org"
* component[functional].valueQuantity.code = #{item}

* component[nonFunctional].valueQuantity.value = 1
* component[nonFunctional].valueQuantity.unit = "item"
* component[nonFunctional].valueQuantity.system = "http://unitsofmeasure.org"
* component[nonFunctional].valueQuantity.code = #{item}

Instance: ExampleMUACStripesStockObservation
InstanceOf: DeviceMaterialObservation
Title: "Example - MUAC Stripes Stock"
Description: "Example record of MUAC Stripes stock tracking."
Usage: #example

* status = #final
* code = DEVICE_MATERIAL#muac-stripes "MUAC Stripes"
* effectiveDateTime = "2025-08-07"
* encounter = Reference(NEIREncounterExample)

* component[openingBalance].valueQuantity.value = 10
* component[openingBalance].valueQuantity.unit = "item"
* component[openingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[openingBalance].valueQuantity.code = #{item}

* component[received].valueQuantity.value = 2
* component[received].valueQuantity.unit = "item"
* component[received].valueQuantity.system = "http://unitsofmeasure.org"
* component[received].valueQuantity.code = #{item}

* component[quantityUsed].valueQuantity.value = 1
* component[quantityUsed].valueQuantity.unit = "item"
* component[quantityUsed].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityUsed].valueQuantity.code = #{item}

* component[closingBalance].valueQuantity.value = 11
* component[closingBalance].valueQuantity.unit = "item"
* component[closingBalance].valueQuantity.system = "http://unitsofmeasure.org"
* component[closingBalance].valueQuantity.code = #{item}

* component[quantityReturned].valueQuantity.value = 0
* component[quantityReturned].valueQuantity.unit = "item"
* component[quantityReturned].valueQuantity.system = "http://unitsofmeasure.org"
* component[quantityReturned].valueQuantity.code = #{item}

* component[status].valueCodeableConcept.coding.system = DEVICE_MATERIAL 
* component[status].valueCodeableConcept.coding.code = #functional
* component[status].valueCodeableConcept.coding.display = "Functional"

* component[functional].valueQuantity.value = 10
* component[functional].valueQuantity.unit = "item"
* component[functional].valueQuantity.system = "http://unitsofmeasure.org"
* component[functional].valueQuantity.code = #{item}

* component[nonFunctional].valueQuantity.value = 1
* component[nonFunctional].valueQuantity.unit = "item"
* component[nonFunctional].valueQuantity.system = "http://unitsofmeasure.org"
* component[nonFunctional].valueQuantity.code = #{item}
