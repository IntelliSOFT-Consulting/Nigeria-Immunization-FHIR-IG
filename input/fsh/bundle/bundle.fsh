Profile: PatientCreationBundle
Parent: Bundle
Id: patient-creation-bundle
Title: "Bundle - Add Patient Creation"
Description: "A transaction bundle containing patient registration data, including related person details and registration observations collected at the point of care."
* type = #transaction

* entry 1..*
  * fullUrl 1..1

* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "Entry resources for capturing patient information."

* entry contains
    relatedPerson 1..1 MS and
    registrationObservation 1..1

* insert BundleEntry(NEIRRelatedPerson, relatedPerson)
* insert BundleEntry(NEIRRegistrationObservation, registrationObservation)


Instance: ExamplePatientCreationBundle
InstanceOf: PatientCreationBundle
Title: "Example of a Patient Creation Bundle"
Description: "Example of a patient creation transaction bundle"
Usage: #example

* type = #transaction

* entry[0].fullUrl = "urn:uuid:relatedPerson-1"
* entry[0].resource = ExampleNEIRRelatedPerson
* entry[0].request.method = #POST
* entry[0].request.url = "RelatedPerson"

* entry[1].fullUrl = "urn:uuid:patient-registration-obs-1"
* entry[1].resource = ExampleNEIRRegistrationObservation
* entry[1].request.method = #POST
* entry[1].request.url = "Observation"