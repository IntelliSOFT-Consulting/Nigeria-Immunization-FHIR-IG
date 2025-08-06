Profile: NEIRRelatedPerson
Parent: RelatedPerson 
Title: "Related Person Profile - NEIR"
Description: "Defines the RelatedPerson resource to represent parents, guardians, or caregivers associated with a child or dependent receiving immunization services in NEIR."

* patient 1..1 MS
* patient only Reference(NEIRPatient)
* name 0..* MS
* name.given 1..* MS
* name.family 0..1 MS
* telecom 0..* MS
* birthDate 0..1 
* gender 1..1 MS
* gender from GenderVS
* relationship from RelatedPersonRelationshipTypeVS (required)
* relationship 1..1 MS
* relationship.coding.code 1..1 MS
* relationship.coding.system 1..1 MS
* relationship.coding.display 0..1 MS


Instance: ExampleNEIRRelatedPerson
InstanceOf: NEIRRelatedPerson
Title: "Example RelatedPerson - Mother's Other Child"
Description: "An example of a mother's other child as a RelatedPerson resource."

* patient = Reference(patient-example)
* name.given = "John Rocker"
* name.family = "Doe"
* birthDate = "2015-01-01"
* gender = #male
* relationship.coding.code = #MTH
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship.coding.display = "mother"
