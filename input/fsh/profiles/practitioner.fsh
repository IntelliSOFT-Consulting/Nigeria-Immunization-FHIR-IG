
Profile: NEIRPractitioner
Parent: Practitioner
Title: "Practitioner Profile - NEIR"
Description: "Constrains the Practitioner resource to represent healthcare workers and vaccinators involved in delivering immunization services recorded in NEIR." 

* identifier 0..* MS
* identifier.system 1..1
* identifier.system ^short = "The namespace for the identifier value e.g a Registry URL"
* identifier.value 1..1
* identifier.value ^short = "The value that is unique from the namespace"
* name MS
* name.given 1..1
* name.family 1..1
* telecom 0..* 
* telecom.system 1..1
* telecom.value 1..1 
* birthDate MS 

Instance: practitioner-example
InstanceOf: NEIRPractitioner
Usage: #example
Title: "NEIRPractitionerExample"
Description: "An example of a Nigerian Practitioner" 
* identifier.system = NEIR_PRACTITIONER
* identifier.use = #official
* identifier.value = "123456"
* name.given = "John"
* name.family = "Doe"
* telecom.system = #phone
* telecom.value = "0722000000"
* birthDate = "1980-01-01"  
