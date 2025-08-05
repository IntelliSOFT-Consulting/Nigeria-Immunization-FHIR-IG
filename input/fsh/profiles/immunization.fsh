Profile: NEIRImmunization
Parent: Immunization
Title: "Immunization Profile - NEIR"
Description: "Nigerian Registry Profile for Immunization."

* identifier 0..0
* location MS
* location ^short = "Vaccination venue" 
* vaccineCode 1..1 MS
* vaccineCode ^short = "Vaccine Administered"
* statusReason from NEIRImmunizationNotDoneReasonsVS (required)
* status MS
* manufacturer MS
* manufacturer.display 1..1
* manufacturer.display ^short = "Name of the Manufacturer"
* manufacturer.reference 1..1
* manufacturer.reference ^short = "Manufacturer ID"
* protocolApplied 0..* MS
* protocolApplied.targetDisease 1..1 MS
* lotNumber 1..1 MS
* lotNumber ^short = "Vaccine batch number"
* expirationDate 1..1 MS
* doseQuantity MS
* site MS
* performer 0..* MS
* performer.actor.display MS
* performer.actor.display ^short = "Vaccinator Name"
* performer.actor.reference 1..1
* performer.actor.reference ^short = "Vaccinator ID"
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
* vaccineCode.coding[0].system = $cvx
* vaccineCode.coding[0].code = #110
* vaccineCode.coding[0].display = "DTaP-hepatitis B and poliovirus vaccine"

* vaccineCode.coding[+].system = $cvx
* vaccineCode.coding[=].code = #56
* vaccineCode.coding[=].display = "dengue fever tetravalent"

* vaccineCode.coding[+].system = $cvx
* vaccineCode.coding[=].code = #05
* vaccineCode.coding[=].display = "measles virus vaccine"

* patient = Reference(Patient/patient-example)
* occurrenceDateTime = "2025-03-11T11:27:00+03:00"
* recorded = "2025-03-11T11:29:00+03:00"
* primarySource = true
* lotNumber = "ret-234235"
* expirationDate = "2027-11-01" 
* performer.actor = Reference(Practitioner/practitioner-example)