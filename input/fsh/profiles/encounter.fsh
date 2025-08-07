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
* type.coding.code 1..1 MS
* type.coding.system 1..1 MS
* type.coding.display 0..1 MS
* type from NEIRSessionTypeVS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* participant 1..* MS
* participant.individual only Reference(Practitioner) 
* location 1..1 MS
* location.location only Reference(Location)
* serviceProvider 1..1 MS
* serviceProvider only Reference(Organization)

Instance: NEIREncounterExample
InstanceOf: NEIREncounter 
Usage: #example
Description: "An example encounter in the Nigerian Electronic Immunization Registry (NEIR) for an outreach immunization visit."
* status = #in-progress
* class = V3ActCode#HH
* type.coding.code = #DE8
* type.coding.system = "http://moh.nigeria/sessionType"
* type.coding.display = "Outreach"
* subject.reference = "Patient/NEIRPatientExample" 
* participant.individual.reference = "Practitioner/practitioner-example"
* location.location.reference = "Location/NEIRLocationExample"
* serviceProvider.reference = "Organization/NEIROrganizationExample"
