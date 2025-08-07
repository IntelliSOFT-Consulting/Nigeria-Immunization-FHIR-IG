Profile: UpdateClientHistoryBundle
Parent: Bundle
Id: immzc1-client-update-bundle
Title: "Bundle - Update Client History"
Description: "Transaction bundle containing clinical resources representing an update to a client's immunization and health status."

* type = #transaction


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
    observationEntry 1..1 and
    immunizationEntry 0..*
 
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

* entry[0].fullUrl = "urn:uuid:observation-1"
* entry[0].resource = ExampleNEIRUpdateClientHistoryObservation
* entry[0].request.method = #POST
* entry[0].request.url = "NEIRUpdateClientHistoryObservation" 
