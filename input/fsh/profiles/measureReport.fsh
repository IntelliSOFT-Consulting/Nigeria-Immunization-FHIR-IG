Profile: NEIRMeasureReport
Parent: MeasureReport
Id: NEIRMeasureReport
Title: "MeasureReport Profile - NEIR"
Description: "
This profile constrains the MeasureReport resource to support reporting immunization coverage and performance indicators
within the National Electronic Immunization Registry (NEIR), specifically aligned to the IMMZ.H.Generate report use case.
"

* status 1..1 MS
* status from MeasureReportStatus (required)

* type 1..1 MS
* type = #summary

* measure 1..1 MS
* measure only canonical

* period 1..1 MS

* subject 1..1 MS
* subject only Reference(Patient) 

* reporter 0..1 MS
* reporter only Reference(Organization)

* date 0..1 MS

// * group 1..* MS
// * group ^slicing.discriminator.type = #pattern
// * group ^slicing.discriminator.path = "code"
// * group ^slicing.rules = #open

// * group.code 1..1 MS
// * group.code from IMMZMeasureIndicatorCodes (required)

// * group.population 1..* MS
// * group.population.code from http://terminology.hl7.org/CodeSystem/measure-population (required)
// * group.population.count 1..1 MS

// * group.measureScore 0..1 MS

// * group.stratifier 0..* MS
// * group.stratifier.code 0..1
// * group.stratifier.stratum 0..* MS
// * group.stratifier.stratum.value 0..1
// * group.stratifier.stratum.population 0..* MS
