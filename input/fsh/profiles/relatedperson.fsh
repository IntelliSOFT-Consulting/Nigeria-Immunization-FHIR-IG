Profile: NEIRRelatedPerson
Parent: RelatedPerson 
Title: "Related Person Profile - NEIR"
Description: "Defines the RelatedPerson resource to represent parents, guardians, or caregivers associated with a child or dependent receiving immunization services in NEIR."

* patient 1..1 MS
* patient only Reference(Patient)
* name 1..*
* name.given 1..*
* birthDate 0..1
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)


Instance: Child1
InstanceOf: NEIRRelatedPerson
Title: "Example RelatedPerson - Mother's Other Child"
Description: "An example of a mother's other child as a RelatedPerson resource."

* patient = Reference(Patient/patient-example)
* name.given = "John"
* birthDate = "2015-01-01"
* gender = #male
