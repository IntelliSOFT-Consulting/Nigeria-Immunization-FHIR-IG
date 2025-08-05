Profile: NEIRPatient
Parent: Patient
Title: "Patient Profile - NEIR"
Description: "Constrains the Patient resource to represent individuals enrolled in NEIR for immunization, capturing identifiers, demographics, birth and parental information relevant to vaccination services."

* identifier 1..1 MS 
* name 1..* 
* name.given 1..* MS 
* name.family 1..1 MS 
* gender 1..1 MS 
* gender from GenderVS
* birthDate 1..1 MS
* extension contains MotherHealthStatus named motherHealthStatus 0..1 
* extension contains HivStatus named hivStatus 0..1 
* extension contains PregnancyStatus named pregnancyStatus 0..1 
* extension contains BirthWeigth named birthWeigth 0..1 
* contact 0..*  MS
* contact.name.given 1..*  MS
* contact.telecom 0..*  MS
* address 0..*  MS
* address.line 1..*  MS
* address.line ^short = "The town or city where the client resides"
* address.city 0..1  MS 
* address.city ^short = "The ward where the client lives"
* address.district 1..1 MS
* address.district ^short = "Local Government Authority where the client lives"
* address.state 1..1  MS
* address.state ^short = "The state where the client lives"



Instance: patient-example
InstanceOf: NEIRPatient
Usage: #example
Title: "NEIR Patient Example"
Description: "An example patient registration instance based on the NEIR profile."
* identifier.value = "NEIR-12345"
* name.given[0] = "John"
* name.family = "Doe"
* gender = #male
* birthDate = "2020-06-18"
* extension[motherHealthStatus].valueCodeableConcept.text = "Alive"
* extension[hivStatus].valueCodeableConcept.text = "Negative"
* extension[pregnancyStatus].valueBoolean = false
* extension[birthWeigth].valueQuantity.value = 2500
* address[0].line[0] = "123 Health Street"
* address[0].city = "Lagos"
* address[0].district = "Ikeja"
* address[0].state = "Lagos"
* contact[0].name.given = "Mary Doe"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+234-555-HEALTH"