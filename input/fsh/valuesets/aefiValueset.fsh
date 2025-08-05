
ValueSet: NEIRClinicalStatusVS
Id: neir-clinical-status-vs 
Title: "NEIR Clinical Status"
Description: "Subset of standard clinical statuses for allergy intolerance."
* ^url = NEIR_CLINICAL_STATUS_VS
* ^status = #active 
* ^experimental = false

* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#inactive
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#resolved





ValueSet: NEIRVerificationStatusVS
Id: neir-verification-status-vs
Title: "NEIR Verification Status"
Description: "Subset of allowed verification statuses for NEIR."
* ^url = NEIR_VERIFICATION_STATUS_VS
* ^status = #active 
* ^experimental = false

* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#refuted
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#entered-in-error

