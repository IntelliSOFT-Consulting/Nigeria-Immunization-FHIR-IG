Profile: NEIRPatient
Parent: Patient
Title: "Patient Profile - NEIR"
Description: "Constrains the Patient resource to represent individuals enrolled in NEIR for immunization, capturing identifiers, demographics, birth and parental information relevant to vaccination services."

* identifier 1..* MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

// STEP 2: Declare the slice
* identifier contains 
    NationalIDNo 0..1 MS and 
    MedicalRecordsNumber 0..1 MS and  
    ImmunizationRecordsNumber 0..1 MS and 
    BirthCertificateNo 0..1 MS 


// STEP 3: Add constraints to the slice
* identifier[NationalIDNo].value 1..1
* identifier[NationalIDNo].system = "http://moh.nigeria/identifier/nationalID-no"

* identifier[MedicalRecordsNumber].value 1..1
* identifier[MedicalRecordsNumber].system = "http://moh.nigeria/identifier/medicalrecord-no"

* identifier[ImmunizationRecordsNumber].value 1..1
* identifier[ImmunizationRecordsNumber].system = "http://moh.nigeria/identifier/immunization-no"

* identifier[BirthCertificateNo].value 1..1
* identifier[BirthCertificateNo].system = "http://moh.nigeria/identifier/birthCertificate-no"

* name 1..* 
* name.given 1..* MS 
* name.family 1..1 MS 
* gender 1..1 MS 
* gender from GenderVS
* birthDate 1..1 MS
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



Instance: NEIRPatientExample
InstanceOf: NEIRPatient
Usage: #example
Title: "NEIR Patient Example"
Description: "An example patient registration instance based on the NEIR profile."
* identifier.value = "NEIR-12345"
* identifier.system = "http://moh.nigeria/identifier/nationalID-no"
* name.given[0] = "John"
* name.family = "Doe"
* gender = #male
* birthDate = "2020-06-18"
* address[0].line[0] = "123 Health Street"
* address[0].city = "Lagos"
* address[0].district = "Ikeja"
* address[0].state = "Lagos"
* contact[0].name.given = "Mary Doe"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+234-555-HEALTH"