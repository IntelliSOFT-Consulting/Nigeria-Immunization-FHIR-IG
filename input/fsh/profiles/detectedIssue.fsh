Profile: NEIRDetectedIssue
Parent: DetectedIssue
Title: "DetectedIssue Profile - NEIR"
Description: "This profile constrains the DetectedIssue resource to represent immunization-related issues within the National Electronic Immunization Registry (NEIR), such as contraindications, missed doses, duplicate records, or adverse events, supporting safe and effective vaccination delivery."

* identifier 0..1 MS
* status 1..1 MS
* code 1..1 MS
* code from IMMZDContraindications (required)
* patient 1..1 MS
* patient only Reference(NEIRPatient)


Instance: NEIRDetectedIssueExample
InstanceOf: NEIRDetectedIssue
Title: "Example DetectedIssue - NEIR Contraindication"
Description: "An example of a contraindication issue recorded in the NEIR system due to a vaccine allergy."
Usage: #example

* status = #final
* code = #DE13 "Allergy to vaccine component"
* patient = Reference(Patient/NEIRPatientExample)
* identifier.system = "http://neir.nigeria.gov/detectedissue"
* identifier.value = "DI-20250807-001"
