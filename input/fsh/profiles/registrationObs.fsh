Profile: NEIRRegistrationObservation
Parent: Observation
Id: NEIRRegistrationObservation
Title: "Observations - NEIR Registration Observation"
Description: "A composite Observation profile capturing state of health, underlying conditions, and HIV status during NEIR client registration."

* status 1..1
* status = #final

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history

* code 1..1
//TODO Create registration-observations
// * code = NEIR#registration-observations "NEIR Registration Observations"

* subject 1..1
* subject only Reference(Patient)

* effective[x] 1..1

// Define the three required components
* component 3..3

// Slice the component field
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Component: State of Health
* component contains stateOfHealth 1..1
* component[stateOfHealth].code = http://loinc.org#11323-3 "State of health"
* component[stateOfHealth].valueCodeableConcept 1..1 MS
* component[stateOfHealth].valueCodeableConcept from IMMZC1HivStatusVS (required)

// Component: Underlying Condition
* component contains underlyingCondition 1..1
//TODO List:
// * component[underlyingCondition].code = NEIR#underlying-condition "Underlying disease (specify)"
* component[underlyingCondition].code 1..1 MS
* component[underlyingCondition].valueCodeableConcept 1..1 MS
* component[underlyingCondition].valueCodeableConcept from IMMZC1HivStatusVS (required)

// Component: HIV Status
* component contains hivStatus 1..1
* component[hivStatus].code = http://loinc.org#55284-4 "HIV status"
* component[hivStatus].valueCodeableConcept 1..1 MS
* component[hivStatus].valueCodeableConcept from IMMZC1HivStatusVS (required)
