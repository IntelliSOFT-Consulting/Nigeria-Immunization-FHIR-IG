Profile: NEIRImmunization
Parent: Immunization
Title: "Immunization Profile - NEIR"
Description: "Nigerian Registry Profile for Immunization."

* identifier 0..*
* patient 1..1
* patient only Reference(NEIRPatient)

* location 1..1
* location only Reference(NEIRLocation)
* location ^short = "Vaccination venue" 

* vaccineCode 1..1 
* vaccineCode ^short = "Vaccine Administered"
* vaccineCode from NEIRVaccineCodesVS
* statusReason from NEIRImmunizationNotDoneReasonsVS (required)
* status 1..1
* manufacturer 1..1
* manufacturer.display 1..1
* manufacturer.display ^short = "Name of the Manufacturer"
* manufacturer.reference 1..1
* manufacturer.reference ^short = "Manufacturer ID"

* doseQuantity 1..1 
* protocolApplied 0..* 
* protocolApplied.targetDisease 1..1 
* lotNumber 1..1 
* lotNumber ^short = "Vaccine batch number"
* expirationDate 1..1 
* doseQuantity 
* site 1..1
* performer 1..* 
* performer.actor 1..1 
* performer.actor only Reference(NEIRPractitioner)
* performer.actor.display 
* performer.actor.display ^short = "Vaccinator Name" 
* occurrence[x] only dateTime



Invariant:   neir-imm-1
Description: "If the status is not-done, a reason must be provided"
Severity:    #error
Expression:  "status != 'not-done' xor statusReason.exists()"


Instance: NEIRImmunizationExample
InstanceOf: NEIRImmunization
Description: "Immunization Example"
Usage: #example

* status = #completed
* vaccineCode = IMMZFDE6#measles "Measles"
* patient = Reference(patient-example)
* location = Reference(location-example)
* occurrenceDateTime = "2025-07-30T10:30:00+03:00"
* site = IMMZD#IMMZ.D.DE23 "Left Arm"
* route = IMMZD#IMMZ.D.DE30 "Intramuscular"
* lotNumber = "BATCH-00123"
* expirationDate = "2026-01-01"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL


* manufacturer.display = "BioVax Ltd."
* manufacturer.reference = "Organization/biovax-manufacturer"

// Performer (vaccinator)
* performer[0].actor = Reference(Practitioner/practitioner-example)
* performer[0].actor.display = "Dr. Jane Mugo"

// Protocol Applied
* protocolApplied[0].targetDisease = IMMZFDE6#measles "Measles"
* protocolApplied[0].doseNumberPositiveInt = 1