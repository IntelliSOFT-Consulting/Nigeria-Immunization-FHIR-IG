Profile: StockManagementTransactionBundle
Parent: Bundle
Id: immz-stock-management-bundle
Title: "Bundle - Stock Management"
Description: "Transaction bundle used to capture stock level details based on the Stock Management logical model."
* type = #transaction (exactly)

* entry 1..*
  * fullUrl 1..1

// Slicing setup
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "Entry resources for Stock Management workflow."

// Slice entries
* entry contains 
    encounter 1..1 MS and
    vaccineStockEntry 1..* MS and
    deviceStockEntry 1..*
 
* insert BundleEntry(VaccineStockObservation, vaccineStockEntry)
* insert BundleEntry(NEIREncounter, encounter)
* insert BundleEntry(DeviceMaterialObservation, deviceStockEntry)




Instance: ExampleStockManagementTransactionBundle
InstanceOf: StockManagementTransactionBundle
Title: "Example - Stock Management Bundle"
Description: "An example transaction bundle capturing immunization and vaccine stock levels."
Usage: #example

* type = #transaction 

* entry[0].fullUrl = "urn:uuid:encounter-1"
* entry[0].resource = NEIRLocationExample
* entry[0].request.method = #POST
* entry[0].request.url = "Encounter" 


* entry[1].fullUrl = "urn:uuid:bcg-diluent-stock-1"
* entry[1].resource = ExampleBCGDiluentStockObservation
* entry[1].request.method = #POST
* entry[1].request.url = "VaccineStockObservation"

* entry[2].fullUrl = "urn:uuid:hepB-vaccine-stock-1"
* entry[2].resource = ExampleHepBVaccineStockObservation
* entry[2].request.method = #POST
* entry[2].request.url = "VaccineStockObservation"

* entry[3].fullUrl = "urn:uuid:opv-vaccine-stock-1"
* entry[3].resource = ExampleOPVVaccineStockObservation
* entry[3].request.method = #POST
* entry[3].request.url = "VaccineStockObservation"

* entry[4].fullUrl = "urn:uuid:penta-vaccine-stock-1"
* entry[4].resource = ExamplePENTAVaccineStockObservation
* entry[4].request.method = #POST
* entry[4].request.url = "VaccineStockObservation"

* entry[5].fullUrl = "urn:uuid:pcv-vaccine-stock-1"
* entry[5].resource = ExamplePCVVaccineStockObservation
* entry[5].request.method = #POST
* entry[5].request.url = "VaccineStockObservation"

* entry[6].fullUrl = "urn:uuid:ipv-vaccine-stock-1"
* entry[6].resource = ExampleIPVVaccineStockObservation
* entry[6].request.method = #POST
* entry[6].request.url = "VaccineStockObservation"

* entry[7].fullUrl = "urn:uuid:rotavirus-vaccine-stock-1"
* entry[7].resource = ExampleRotavirusVaccineStockObservation
* entry[7].request.method = #POST
* entry[7].request.url = "VaccineStockObservation"

* entry[8].fullUrl = "urn:uuid:measles-vaccine-stock-1"
* entry[8].resource = ExampleMeaslesVaccineStockObservation
* entry[8].request.method = #POST
* entry[8].request.url = "VaccineStockObservation"

* entry[9].fullUrl = "urn:uuid:measles-diluent-stock-1"
* entry[9].resource = ExampleMeaslesDiluentStockObservation
* entry[9].request.method = #POST
* entry[9].request.url = "VaccineStockObservation"

* entry[10].fullUrl = "urn:uuid:yellowfever-vaccine-stock-1"
* entry[10].resource = ExampleYellowFeverVaccineStockObservation
* entry[10].request.method = #POST
* entry[10].request.url = "VaccineStockObservation"

* entry[11].fullUrl = "urn:uuid:yellowfever-diluent-stock-1"
* entry[11].resource = ExampleYellowFeverDiluentStockObservation
* entry[11].request.method = #POST
* entry[11].request.url = "VaccineStockObservation"

* entry[12].fullUrl = "urn:uuid:mena-vaccine-stock-1"
* entry[12].resource = ExampleMenAVaccineStockObservation
* entry[12].request.method = #POST
* entry[12].request.url = "VaccineStockObservation"

* entry[13].fullUrl = "urn:uuid:mena-diluent-stock-1"
* entry[13].resource = ExampleMenADiluentStockObservation
* entry[13].request.method = #POST
* entry[13].request.url = "VaccineStockObservation"

* entry[14].fullUrl = "urn:uuid:hpv-vaccine-stock-1"
* entry[14].resource = ExampleHPVVaccineStockObservation
* entry[14].request.method = #POST
* entry[14].request.url = "VaccineStockObservation"

* entry[15].fullUrl = "urn:uuid:td-vaccine-stock-1"
* entry[15].resource = ExampleTDVaccineStockObservation
* entry[15].request.method = #POST
* entry[15].request.url = "VaccineStockObservation"

* entry[16].fullUrl = "urn:uuid:td-device-stock-1"
* entry[16].resource = ExampleBCGSyringesStockObservation
* entry[16].request.method = #POST
* entry[16].request.url = "DeviceMaterialObservation"

* entry[17].fullUrl = "urn:uuid:bcg-vaccine-stock-1"
* entry[17].resource = ExampleBCGVaccineStockObservation
* entry[17].request.method = #POST
* entry[17].request.url = "VaccineStockObservation"

