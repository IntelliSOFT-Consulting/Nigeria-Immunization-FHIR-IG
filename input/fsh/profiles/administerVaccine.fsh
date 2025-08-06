Profile: AdministerVaccineTransaction
Parent: Bundle
Id: administer-vaccine-transaction
Title: "IMMZ.D Administer Vaccine Transaction"
Description: "Profile for a transaction Bundle used to capture vaccine administration details based on the AdministerVaccine logical model."
* type = #transaction (exactly)
* entry 1..* MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry.resource 1..1
 
* entry contains
    patientEntry 1..1 and
    immunizationEntry 1..1 and
    practitionerEntry 1..1 and
    organizationEntry 1..1

* entry[patientEntry].resource only Patient
* entry[immunizationEntry].resource only Immunization
* entry[practitionerEntry].resource only Practitioner
* entry[organizationEntry].resource only Organization

 
* entry[patientEntry].resource.name 1..1
* entry[patientEntry].resource.gender 1..1
* entry[patientEntry].resource.birthDate 1..1

 
* entry[immunizationEntry].resource.status = #completed
* entry[immunizationEntry].resource.vaccineCode 1..1
* entry[immunizationEntry].resource.vaccineCode from IMMZFVACCINETYPE (required)
* entry[immunizationEntry].resource.occurrenceDateTime 1..1
* entry[immunizationEntry].resource.site 1..1
* entry[immunizationEntry].resource.site from IMMZDSITEADMINISTERED (required)

* entry[immunizationEntry].resource.route 1..1
* entry[immunizationEntry].resource.route from IMMZDROUTEOFADMINISTRATION (required)
* entry[immunizationEntry].resource.doseQuantity 1..1
* entry[immunizationEntry].resource.performer.actor 1..1
* entry[immunizationEntry].resource.lotNumber 1..1
* entry[immunizationEntry].resource.expirationDate 1..1
* entry[immunizationEntry].resource.location.display 1..1

 
* entry[organizationEntry].resource.name 1..1
* entry[organizationEntry].resource.type 1..1  
* entry[organizationEntry].resource.type from IMMZDFACILITYTYPE (required)
 
* entry[practitionerEntry].resource.identifier 1..1
