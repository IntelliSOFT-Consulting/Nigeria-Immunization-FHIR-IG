Profile: NEIRUpdateClientHistoryObservation
Parent: Observation
Id: NEIRUpdateClientHistoryObservation
Title: "Observations - NEIR Update Client History"
Description: "A composite Observation profile capturing primary series, state, comments, HIV Status, reporting officer name,designation and signature"

* status 1..1
* status = #final

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history

* code 1..1 

* subject 1..1
* subject only Reference(NEIRPatient)

* effective[x] 1..1

// Define the three required components
* component 2..2

// Slice the component field
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Component: State of Health
* component contains primarySeries 1..1
* component[primarySeries].code = http://loinc.org#11323-3 "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
* component[primarySeries].valueBoolean 1..1 MS

 
// Component: HIV Status
* component contains hivStatus 1..1
* component[hivStatus].code = http://loinc.org#55284-4 "HIV status"
* component[hivStatus].valueCodeableConcept 1..1 MS
* component[hivStatus].valueCodeableConcept from IMMZC1HivStatusVS (required)



Instance: ExampleNEIRUpdateClientHistoryObservation
InstanceOf: NEIRUpdateClientHistoryObservation
Title: "Example NEIR Registration Observation"
Description: "Example instance capturing NEIR client registration details including state of health, pregnancy status, HIV status, and birth weight."

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $SCT#123456 "NEIR Registration Observations" // Replace with actual code when created
* subject = Reference(patient-example) // Replace with actual patient reference
* effectiveDateTime = "2025-08-07T10:00:00+03:00"

// Component: Primary Series
* component[primarySeries].code = http://loinc.org#11323-3 "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
* component[primarySeries].valueBoolean = true

// Component: HIV Status
* component[hivStatus].code = http://loinc.org#55284-4 "HIV status"
* component[hivStatus].valueCodeableConcept = $SCT#86406008 "HIV negative"
 

