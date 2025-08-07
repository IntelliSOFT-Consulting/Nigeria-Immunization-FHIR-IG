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
* entry ^slicing.description = "Entry resources for Administer Vaccine workflow."


* entry contains
    immunizationEntry 1..1 MS
* insert BundleEntry(NEIRImmunization, immunizationEntry)


Instance: ExampleAdministerVaccineTransactionBundle
InstanceOf: AdministerVaccineTransactionBundle
Title: "Example - Patient Creation"
Description: "An example transaction bundle capturing the administration of a vaccine."
Usage: #example

* type = #transaction

* entry[0].fullUrl = "urn:uuid:immunization-1"
* entry[0].resource = NEIRImmunizationExample
* entry[0].request.method = #POST
* entry[0].request.url = "NEIRImmunization" 
 


 
 
