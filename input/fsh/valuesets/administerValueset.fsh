Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $atc = http://www.whocc.no/atc
Alias: $ind = http://example.org


ValueSet: NEIRImmunizationNotDoneReasonsVS 
Title: "Reason Vaccine not administered"
Description: "Reasons a Vaccine was not administered"
* ^url = "http://example.org/ValueSet/NEIRImmunizationNotDoneReasonsVS"
* ^status = #active
* ^experimental = false 
* include codes from system NEIRImmunizationNotDoneReasonsCS


ValueSet: NEIRFacilityTypeVS 
Title: "Facility Types Valueset"
Description: "A ValueSet containing custom facility types"
* ^url = "http://example.org/ValueSet/NEIRFacilityTypeVS"
* ^status = #active
* ^experimental = false 
* include codes from system NEIRFacilityTypeCS

ValueSet: NEIRSessionTypeVS 
Title: "Session Type Valueset"
Description: "A ValueSet containing custom session types"
* ^url = "http://example.org/ValueSet/NEIRSessionTypeVS"
* ^status = #active
* ^experimental = false 
* include codes from system NEIRSessionTypeCS