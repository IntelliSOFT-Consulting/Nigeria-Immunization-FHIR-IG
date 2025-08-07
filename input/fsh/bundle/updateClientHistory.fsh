Profile: UpdateClientHistoryBundle
Parent: Bundle
Id: immzc1-client-update-bundle
Title: "Bundle - Update Client History"
Description: "Transaction bundle containing clinical resources representing an update to a client's immunization and health status."

* type = #transaction

* signature 1..1
  * type 1..1
  * when 1..1
  * who 1..1
  * sigFormat 0..1
  * data 1..1

* entry 1..*
  * fullUrl 1..1

* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "Entry resources for updating client history."


* entry contains
    encounter 1..1 MS and
    observationEntry 1..1 and
    immunizationEntry 0..*
 
* insert BundleEntry(NEIREncounter, encounter)
* insert BundleEntry(NEIRUpdateClientHistoryObservation, observationEntry)
* insert BundleEntry(NEIRImmunization, immunizationEntry)




Instance: ExampleUpdateClientHistoryBundle
InstanceOf: UpdateClientHistoryBundle
Title: "Example - Update Client History"
Description: "An example transaction bundle capturing details of updating client history"
Usage: #example

* type = #transaction

* entry[0].fullUrl = "urn:uuid:immunization-1"
* entry[0].resource = NEIRImmunizationExample
* entry[0].request.method = #POST
* entry[0].request.url = "NEIRImmunization" 

* entry[1].fullUrl = "urn:uuid:bcg-vaccine-stock-1"
* entry[1].resource = ExampleBCGVaccineStockObservation
* entry[1].request.method = #POST
* entry[1].request.url = "VaccineStockObservation"

* entry[2].fullUrl = "urn:uuid:observation-1"
* entry[2].resource = ExampleNEIRUpdateClientHistoryObservation
* entry[2].request.method = #POST
* entry[2].request.url = "NEIRUpdateClientHistoryObservation" 

 
* signature.type[0].system = "urn:iso-astm:E1762-95:2013"
* signature.type[0].code = #1.2.840.10065.1.12.1.1
* signature.type[0].display = "Author's Signature"

* signature.when = "2025-08-07T10:00:00Z"
* signature.who = Reference(practitioner-example)

* signature.targetFormat = #application/fhir+json
* signature.sigFormat = #application/signature+xml

* signature.data = "dGhpcyBpcyBhIHNpZ25hdHVyZQ=="  // "this is a signature" base64