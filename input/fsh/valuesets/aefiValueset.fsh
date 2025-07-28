
ValueSet: NEIRClinicalStatusVS
Id: neir-clinical-status-vs 
Title: "NEIR Clinical Status"
Description: "Subset of standard clinical statuses for allergy intolerance."
* ^url = "http://example.org/ValueSet/neir-clinical-status-vs"
* ^status = #active
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#inactive
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#resolved





ValueSet: NEIRVerificationStatusVS
Id: neir-verification-status-vs
Title: "NEIR Verification Status"
Description: "Subset of allowed verification statuses for NEIR."
* ^url = "http://example.org/ValueSet/neir-verification-status-vs"
* ^status = #active

* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#refuted
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#entered-in-error

