Profile: AdministerVaccineTransactionBundle
Parent: Bundle 
Title: "Bundle - Administer Vaccine"
Description: "Profile for a transaction Bundle used to capture vaccine administration details based on the AdministerVaccine logical model."
* type = #transaction (exactly)

* entry 1..*
  * fullUrl 1..1

* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "Entry resources for Administering a  Vaccine."


* entry contains
    encounter 1..1 MS and
    immunization 1..1 MS and 
    detectedIssue 1..1 MS and 
    location 1..1 MS

* insert BundleEntry(NEIRLocation, location)
* insert BundleEntry(NEIREncounter, encounter)
* insert BundleEntry(NEIRImmunization, immunization)
* insert BundleEntry(NEIRDetectedIssue, detectedIssue)




Instance: ExampleAdministerVaccineTransactionBundle
InstanceOf: AdministerVaccineTransactionBundle
Title: "Example - Vaccine Administration"
Description: "An example transaction bundle capturing the administration of a vaccine."
Usage: #example

* type = #transaction
* entry[0].fullUrl = "urn:uuid:encounter-1"
* entry[0].resource = NEIRLocationExample
* entry[0].request.method = #POST
* entry[0].request.url = "Encounter" 

* entry[1].fullUrl = "urn:uuid:encounter-1"
* entry[1].resource = NEIREncounterExample
* entry[1].request.method = #POST
* entry[1].request.url = "Encounter" 

* entry[2].fullUrl = "urn:uuid:immunization-1"
* entry[2].resource = NEIRImmunizationExample
* entry[2].request.method = #POST
* entry[2].request.url = "Immunization" 

* entry[3].fullUrl = "urn:uuid:immunization-1"
* entry[3].resource = NEIRDetectedIssueExample
* entry[3].request.method = #POST
* entry[3].request.url = "DetectedIssue" 
 



