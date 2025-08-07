Profile: NEIRProvenance
Parent: Provenance
Id: NEIR-Provenance
Title: "Provenance Profile - NEIR Provenance Profile"
Description: "Constrains the Provenance resource to capture metadata about the origin, authorship, and context of immunization-related data within the NEIR system."

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NEIR Program"
* ^purpose = "To record metadata about data entry or modification in the NEIR system for audit and traceability."

* target 1..* MS
* recorded 1..1 MS
* agent 1..* MS
* agent.who 1..1 MS
* agent.onBehalfOf 0..1
* agent.type 1..1 MS
* agent.role 0..* MS
* entity 0..* MS
* signature 0..*