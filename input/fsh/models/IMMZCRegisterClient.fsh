Logical: RegisterClientModel
Id: register-client-model
Title: "Register Client Model"
Description: "Logical model representing a client being registered in the immunization system."

* identifier 0..1 string "Unique identifier for the client, such as a national ID or system-generated ID."
* name 1..1 HumanName "Full name of the client."
  * family 1..1 string "Family name (last name) of the client."
  * given 1..* string "Given name(s) (first name) of the client."
* gender 1..1 code "Client's sex at birth." 
  * ^binding.valueSet = "http://example.org/fhir/ValueSet/gender-valueset"
* birthDate 1..1 date "Date of birth of the client."
* ageInWeeks 0..1 integer "Calculated age of the client in weeks based on the birth date."
* ageInMonths 0..1 integer "Calculated age of the client in months based on the birth date."
* ageInYears 0..1 integer "Calculated age of the client in years based on the birth date."
* weightAtBirth 0..1 Quantity "Weight of the client at birth, recorded in kilograms."
* address 0..1 Address "Residential address of the client."
  * line 0..* string "Street address or house number."
  * city 0..1 string "Town or city where the client resides."
  * state 0..1 string "State or region where the client resides."
  * district 0..1 string "District or ward where the client resides."
  * postalCode 0..1 string "Postal code of the residence."
* caregiver 0..* BackboneElement "Details of the caregivers of the client."
  * name 1..1 HumanName "Name of the caregiver."
  * phoneNumber 0..1 string "Contact phone number of the caregiver."
  * relationship 1..1 CodeableConcept "Relationship of the caregiver to the client."
    * ^binding.valueSet = "http://example.org/fhir/ValueSet/caregiver-relationship-valueset"
* motherOtherChildren 0..* BackboneElement "Details of the client's mother's other children."
  * name 1..1 string "Name of the sibling."
  * birthYear 1..1 integer "Year of birth of the sibling."
  * sex 1..1 code "Sex of the sibling."
    * ^binding.valueSet = "http://example.org/fhir/ValueSet/gender-valueset"
  * stateOfHealth 1..1 CodeableConcept "Health status of the sibling."
    * ^binding.valueSet = "http://example.org/fhir/ValueSet/health-status-valueset"
* hivStatus 0..1 CodeableConcept "HIV status of the client."
  * ^binding.valueSet = "http://example.org/fhir/ValueSet/hiv-status-valueset"
* pregnancyStatus 0..1 boolean "Indicates whether the client is currently pregnant."



Instance: example-register-client
InstanceOf: RegisterClientModel
Title: "Example Register Client"
Description: "Example instance of a client being registered in the IMMZ system."
Usage: #example

* identifier.value = "123456789"
* name.family = "Doe"
* name.given[0] = "John"
* gender = #male
* birthDate = "2020-05-15"
* ageInWeeks = 200
* ageInMonths = 46
* ageInYears = 3
* weightAtBirth.value = 3.2
* weightAtBirth.unit = "kg"
* weightAtBirth.system = "http://unitsofmeasure.org"
* weightAtBirth.code = #DE12
* address.line = "123 Health Street"
* address.city = "ImmunoCity"
* address.state = "HealthyState"
* address.postalCode = "12345"
* caregiver[0].name.given[0] = "Jane"
* caregiver[0].name.family = "Doe"
* caregiver[0].phoneNumber = "+123456789"
* caregiver[0].relationship.coding[0].system = "http://example.org/fhir/CodeSystem/caregiver-relationship"
* caregiver[0].relationship.coding[0].code = #DE21
* caregiver[0].relationship.coding[0].display = "Mother"
* hivStatus.coding[0].system = "http://example.org/fhir/CodeSystem/hiv-status"
* hivStatus.coding[0].code = #DE39
* hivStatus.coding[0].display = "Negative"
* pregnancyStatus = false
