
ValueSet: NEIRClinicalStatusVS
Id: neir-clinical-status-vs 
Description: "A ValueSet containing custom clinical statuses."
* ^url = "http://example.org/ValueSet/neir-clinical-status-vs"
* ^status = #active
* include codes from system NEIRClinicalStatusCS



ValueSet: NEIRVerificationStatusVS
Id: neir-verification-status-vs 
Description: "A ValueSet containing custom verification statuses."
* ^title = "Verification Status"
* ^url = "http://example.org/ValueSet/neir-verification-status-vs"
* ^status = #active
* ^experimental = false
* include codes from system NEIRVerificationStatusCS