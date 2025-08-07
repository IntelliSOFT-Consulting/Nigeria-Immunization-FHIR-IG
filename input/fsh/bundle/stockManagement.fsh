Profile: StockManagementTransactionBundle
Parent: Bundle
Id: StockManagementTransactionBundle
Title: "Bundle - Stock Management"
Description: "Transaction bundle used to capture stock level details based on the Stock Management logical model."
* type = #transaction (exactly)

* entry 1..*
  * fullUrl 1..1

// Slicing setup
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource" 
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "Entry resources for Stock Management workflow."

// Slice entries
* entry contains 
    encounter 1..1 MS and
    vaccineStockEntry 1..* MS and
    deviceStockEntry 1..*
 
* insert BundleEntry(NEIREncounter, encounter)
* insert BundleEntry(VaccineStockObservation, vaccineStockEntry)
* insert BundleEntry(DeviceMaterialObservation, deviceStockEntry)




Instance: ExampleStockManagementTransactionBundle
InstanceOf: StockManagementTransactionBundle
Title: "Example - Stock Management Bundle"
Description: "An example transaction bundle capturing immunization and vaccine stock levels."
Usage: #example

* type = #transaction 
* entry[0].fullUrl = "urn:uuid:a10fbc7e-f4e9-4a59-bc59-01d2d05f48cd"
* entry[0].resource = NEIREncounterExample
* entry[0].request.method = #POST
* entry[0].request.url = "Encounter"

* entry[1].fullUrl = "urn:uuid:bd98541a-cb5e-4f3f-bdb0-1d37e6b2870a"
* entry[1].resource = ExampleBCGDiluentStockObservation
* entry[1].request.method = #POST
* entry[1].request.url = "Observation"

* entry[2].fullUrl = "urn:uuid:97fd7747-663e-4f34-bf23-dbf206b3e9aa"
* entry[2].resource = ExampleBCGSyringesStockObservation
* entry[2].request.method = #POST
* entry[2].request.url = "Observation"

* entry[3].fullUrl = "urn:uuid:81247b07-b837-4c08-bb6d-02a25700d3cc"
* entry[3].resource = ExampleOPVVaccineStockObservation
* entry[3].request.method = #POST
* entry[3].request.url = "Observation"

* entry[4].fullUrl = "urn:uuid:7d6791c7-cb11-487c-8e1f-51e430b731b3"
* entry[4].resource = ExamplePENTAVaccineStockObservation
* entry[4].request.method = #POST
* entry[4].request.url = "Observation"

* entry[5].fullUrl = "urn:uuid:1bdb64f4-e9cf-4e7f-a9a4-95f30ae21d6d"
* entry[5].resource = ExamplePCVVaccineStockObservation
* entry[5].request.method = #POST
* entry[5].request.url = "Observation"

* entry[6].fullUrl = "urn:uuid:5f6f5029-2895-41f5-9321-7a78c2a2e7d2"
* entry[6].resource = ExampleIPVVaccineStockObservation
* entry[6].request.method = #POST
* entry[6].request.url = "Observation"

* entry[7].fullUrl = "urn:uuid:9b7925ad-6bd7-47b6-bc99-5e918c1ce229"
* entry[7].resource = ExampleRotavirusVaccineStockObservation
* entry[7].request.method = #POST
* entry[7].request.url = "Observation"

* entry[8].fullUrl = "urn:uuid:29806f1f-76b4-4a98-95de-e9ff62bfc223"
* entry[8].resource = ExampleMeaslesVaccineStockObservation
* entry[8].request.method = #POST
* entry[8].request.url = "Observation"

* entry[9].fullUrl = "urn:uuid:b61b2c13-7646-4173-b7a2-7f63cb469fc3"
* entry[9].resource = ExampleMeaslesDiluentStockObservation
* entry[9].request.method = #POST
* entry[9].request.url = "Observation"

* entry[10].fullUrl = "urn:uuid:4e570dc6-7882-4356-a1f3-e685c182e3f4"
* entry[10].resource = ExampleYellowFeverVaccineStockObservation
* entry[10].request.method = #POST
* entry[10].request.url = "Observation"

* entry[11].fullUrl = "urn:uuid:5671d0c3-c91f-47d4-a607-30a1e30db2a3"
* entry[11].resource = ExampleYellowFeverDiluentStockObservation
* entry[11].request.method = #POST
* entry[11].request.url = "Observation"

* entry[12].fullUrl = "urn:uuid:558ef41a-930b-4d61-89e6-36fbb4873014"
* entry[12].resource = ExampleMenAVaccineStockObservation
* entry[12].request.method = #POST
* entry[12].request.url = "Observation"

* entry[13].fullUrl = "urn:uuid:81e3e3e1-2d9e-4d61-a902-d2e098073d72"
* entry[13].resource = ExampleMenADiluentStockObservation
* entry[13].request.method = #POST
* entry[13].request.url = "Observation"

* entry[14].fullUrl = "urn:uuid:eb70c87e-4ef0-4bb7-a42e-420759fb50bc"
* entry[14].resource = ExampleHPVVaccineStockObservation
* entry[14].request.method = #POST
* entry[14].request.url = "Observation"

* entry[15].fullUrl = "urn:uuid:1f6a67c9-d785-45c4-80a6-2b7f2ec87ae9"
* entry[15].resource = ExampleTDVaccineStockObservation
* entry[15].request.method = #POST
* entry[15].request.url = "Observation"

* entry[16].fullUrl = "urn:uuid:e65a7aa6-7b3c-49b8-94e3-ecb84e6d0e91"
* entry[16].resource = ExampleHepBVaccineStockObservation
* entry[16].request.method = #POST
* entry[16].request.url = "Observation"

* entry[17].fullUrl = "urn:uuid:379ad0b5-f70e-4b52-9247-86c78bd75989"
* entry[17].resource = ExampleBCGVaccineStockObservation
* entry[17].request.method = #POST
* entry[17].request.url = "Observation"



