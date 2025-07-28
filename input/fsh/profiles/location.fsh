Profile: NEIRLocation
Parent: Location
Id: neir-location 
Title: "NEIR Location"
Description: "A profile for immunization service locations in the Nigerian Electronic Immunization Registry (NEIR), including health facilities, outreach sites, and mobile vaccination units."

* ^url = "http://example.org/StructureDefinition/neir-location"
* ^version = "1.0.0"
* ^status = #active

// Required fields
* status 1..1
* name 1..1

// Allow multiple types, and bind to the correct ValueSet
* type 1..* MS
* type from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (extensible)

// Required address and fixed country code
* address 1..1 MS
* address.country = "NG" (exactly)

// Optional telecoms
* telecom 0..* MS



Instance: location-example
InstanceOf: NEIRLocation
Usage: #example
Description: "An example immunization service location in the Nigerian Electronic Immunization Registry (NEIR)."
* status = #active
* name = "Kofar Dukayuwa PHC" 
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.code = #AMB
* type.coding.display = "Ambulance"

* address.text = "Kofar Dukayuwa PHC, Kano, Nigeria"
* address.city = "Kano"
* address.country = "NG"
* telecom.system = #phone
* telecom.value = "+2348012345678"
* telecom.use = #work
