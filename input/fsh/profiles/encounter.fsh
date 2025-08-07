Profile: NEIREncounter
Parent: Encounter 
Title: "Encounter Profile - NEIR"
Description: "Profiles the Encounter resource to capture immunization-related visits in NEIR, including outreach sessions, facility visits, and mobile unit interactions linked to service delivery."
* ^url = NEIRENCOUNTER
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Nigerian Ministry of Health"
* status ^short = "Status of the immunization encounter"
* class ^short = "Type of encounter (e.g., ambulatory, home visit)"
* class from EncounterClassVS (required)
* type 1..1 MS
* type from NEIRSessionTypeVS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* participant 1..* MS
* participant.individual only Reference(Practitioner) 
* location 1..1 MS
* location.location only Reference(Location)
* serviceProvider 1..1 MS
* serviceProvider only Reference(Organization)

Instance: encounter-example
InstanceOf: NEIREncounter 
Usage: #example
Title: "Outreach Immunization Visit"
Description: "Example of an Encounter: Outreach Immunization Visit"
* status = #in-progress
* class = V3ActCode#HH
* type.coding.code = #DE3
* subject.reference = "Patient/patient-example" 
* participant.individual.reference = "Practitioner/practitioner-example"
* location.location.reference = "Location/location-example"
* serviceProvider.reference = "Organization/organization-example"
