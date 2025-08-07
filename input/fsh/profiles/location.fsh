Profile: NEIRLocation
Parent: Location 
Title: "NEIRLocation Profile"
Description: "Defines constraints on the FHIR Location resource to represent immunization service delivery points in the Nigerian Electronic Immunization Registry (NEIR), including health facilities, outreach sites, and mobile vaccination units. Captures key attributes like type, address, coordinates, and managing organization to support accurate tracking and reporting."

* ^url = NEIRLOCATION
* ^version = "1.0.0"
* ^status = #active

// Required fields
* status 1..1
* name 1..1

// Allow multiple types, and bind to the correct ValueSet
* type 1..* MS
* type from NEIRFacilityTypeVS

// Required address and fixed country code
* address 1..1 MS
* address.country = "NG" (exactly)

// Optional telecoms
* telecom 0..* MS



Instance: location-example
InstanceOf: NEIRLocation
Usage: #example
Title: "Kofar Dukayuwa PHC"
Description: "Example of an immunization service location: Kofar Dukayuwa PHC"
* status = #active
* name = "Kofar Dukayuwa PHC" 
* type.coding.system = ROLE_CODE
* type.coding.code = #AMB
* type.coding.display = "Ambulance"

* address.text = "Kofar Dukayuwa PHC, Kano, Nigeria"
* address.city = "Kano"
* address.country = "NG"
* telecom.system = #phone
* telecom.value = "+2348012345678"
* telecom.use = #work
