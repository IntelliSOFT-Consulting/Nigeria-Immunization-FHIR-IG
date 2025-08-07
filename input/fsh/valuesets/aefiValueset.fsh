
ValueSet: NEIRClinicalStatusVS
Id: neir-clinical-status-vs 
Title: "NEIR ValueSet for Clinical Status"
Description: "ValueSet for Clinical Status from NEIR"
* ^url = NEIR_CLINICAL_STATUS_VS
* ^status = #active 
* ^experimental = false

* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#inactive
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#resolved





ValueSet: NEIRVerificationStatusVS
Id: neir-verification-status-vs
Title: "NEIR ValueSet for Verification Status"
Description: "ValueSet for Verification status from NEIR"
* ^url = NEIR_VERIFICATION_STATUS_VS
* ^status = #active 
* ^experimental = false

* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#refuted
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#entered-in-error

