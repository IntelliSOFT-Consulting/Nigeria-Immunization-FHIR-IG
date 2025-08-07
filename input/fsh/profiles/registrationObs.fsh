Profile: NEIRRegistrationObservation
Parent: Observation
Id: NEIRRegistrationObservation
Title: "Observations - NEIR Registration"
Description: "A composite Observation profile capturing state of health, underlying conditions, and HIV status during NEIR client registration."

* status 1..1
* status = #final

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history

* code 1..1
//TODO Create registration-observations
// * code = NEIR#registration-observations "NEIR Registration Observations"

* subject 1..1
* subject only Reference(NEIRPatient)

* effective[x] 1..1

// Define the three required components
* component 4..4

// Slice the component field
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Component: State of Health
* component contains stateOfHealth 1..1
* component[stateOfHealth].code = http://loinc.org#11323-3 "State of Health of Mothers other children"
* component[stateOfHealth].valueCodeableConcept 1..1 MS
* component[stateOfHealth].valueCodeableConcept from IMMZC1StateOfHealthOtherChildrenVS (required)

// Component: Pregnancy Status
* component contains pregnancyStatus 1..1
* component[pregnancyStatus].code = http://loinc.org#82810-3 "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept 1..1 MS
* component[pregnancyStatus].valueCodeableConcept from PregnancyStatusVS (required)

// Component: HIV Status
* component contains hivStatus 1..1
* component[hivStatus].code = http://loinc.org#55284-4 "HIV status"
* component[hivStatus].valueCodeableConcept 1..1 MS
* component[hivStatus].valueCodeableConcept from IMMZC1HivStatusVS (required)

// Weight at Birth
* component contains birthWeight 1..1
* component[birthWeight].code = http://loinc.org#8339-4 "Birth weight Measured"
* component[birthWeight].valueQuantity 1..1
* component[birthWeight].valueQuantity.unit = "g"
* component[birthWeight].valueQuantity.system = "http://unitsofmeasure.org"
* component[birthWeight].valueQuantity.code = #g



Instance: ExampleNEIRRegistrationObservation
InstanceOf: NEIRRegistrationObservation
Title: "Example Questionnaire Response for client Registration"
Description: "Example Questionnaire Response for IMMZ.C Register Client."

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $SCT#123456 "NEIR Registration Observations" // Replace with actual code when created
* subject = Reference(patient-example) // Replace with actual patient reference
* effectiveDateTime = "2025-08-05T10:00:00+03:00"

// Component: State of Health
* component[stateOfHealth].code = http://loinc.org#11323-3 "State of Health of Mothers other children"
* component[stateOfHealth].valueCodeableConcept = $SCT#419099009 "Alive and well"

// Component: Pregnancy Status
* component[pregnancyStatus].code = http://loinc.org#82810-3 "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept = $SCT#77386006 "Pregnant"

// Component: HIV Status
* component[hivStatus].code = http://loinc.org#55284-4 "HIV status"
* component[hivStatus].valueCodeableConcept = $SCT#86406008 "HIV negative"

// Component: Birth Weight
* component[birthWeight].code = http://loinc.org#8339-4 "Birth weight Measured"
* component[birthWeight].valueQuantity.value = 3200
* component[birthWeight].valueQuantity.unit = "g"
* component[birthWeight].valueQuantity.system = "http://unitsofmeasure.org"
* component[birthWeight].valueQuantity.code = #g



