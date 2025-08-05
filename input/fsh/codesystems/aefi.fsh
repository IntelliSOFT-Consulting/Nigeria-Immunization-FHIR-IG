CodeSystem: NEIRClinicalStatusCS
Id: neir-clinical-status 
Title: "Clinical Status CodeSystem"
Description: "A custom CodeSystem defining clinical statuses for AEFI documentation."
* ^url = NEIR_CLINICAL_STATUS
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false

* #active "Active"
* #inactive "Inactive"
* #resolved "Resolved"


CodeSystem: NEIRVerificationStatusCS
Id: neir-verification-status 
Title: "Clinical Verification Status CodeSystem"
Description: "A custom CodeSystem defining clinical verification statuses for AEFI documentation."
* ^url = NEIR_VERIFICATION_STATUS
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false

* #confirmed "Confirmed"
* #unconfirmed "Unconfirmed" 
* #refuted "Refuted" 
* #entered-in-error "Entered in Error"



