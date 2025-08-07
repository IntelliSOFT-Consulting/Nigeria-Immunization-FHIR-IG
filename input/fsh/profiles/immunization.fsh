Profile: NEIRImmunization
Parent: Immunization
Title: "Immunization Profile - NEIR"
Description: "Nigerian Registry Profile for Immunization."

* identifier 0..* MS
* patient 1..1 MS
* patient only Reference(NEIRPatient)

* location 1..1 MS
* location only Reference(NEIRLocation)
* location ^short = "Where Vaccination was administered" 

* vaccineCode 1..1  MS
* vaccineCode ^short = "Vaccine Administered"
* vaccineCode from NEIRVaccineCodesVS
* statusReason from NEIRImmunizationNotDoneReasonsVS (required)
* status 1..1 MS
* manufacturer 1..1 MS
* manufacturer.display 1..1 MS
* manufacturer.display ^short = "Name of the Manufacturer"
* manufacturer.reference 1..1 MS
* manufacturer.reference ^short = "Manufacturer ID"

* doseQuantity 1..1 MS
* protocolApplied 0..* MS
* protocolApplied.targetDisease 1..1 MS
* lotNumber 1..1 MS
* lotNumber ^short = "Vaccine batch number"
* expirationDate 1..1 MS
* doseQuantity MS
* site 1..1 MS
* site from IMMZDSiteAdministered
* performer 1..*  MS
* performer.actor 1..1 MS
* performer.actor only Reference(NEIRPractitioner)
* performer.actor.display MS
* performer.actor.display ^short = "Vaccinator Name" 
* occurrence[x] only dateTime



Instance: NEIRImmunizationExample
InstanceOf: NEIRImmunization
Usage: #example
Title: "Measles Vaccine"
Description: "Example of an Immunization: Measles Vaccine"

* status = #completed
* vaccineCode = IMMZFDE6#measles "Measles"
* patient = Reference(Patient/NEIRPatientExample)
* location = Reference(Location/NEIRlocationExample)
* occurrenceDateTime = "2025-07-30T10:30:00+03:00"
* site = IMMZD#DE23 "Left Arm"
* route = IMMZD#DE30 "Intramuscular"
* lotNumber = "BATCH-00123"
* expirationDate = "2026-01-01"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL


* manufacturer.display = "BioVax Ltd."
* manufacturer.reference = "Organization/biovax-manufacturer"

// Performer (vaccinator)
* performer[0].actor = Reference(Practitioner/NEIRPractitionerExample)
* performer[0].actor.display = "Dr. Jane Mugo"

// Protocol Applied
* protocolApplied[0].targetDisease = IMMZFDE6#measles "Measles"
* protocolApplied[0].doseNumberPositiveInt = 1