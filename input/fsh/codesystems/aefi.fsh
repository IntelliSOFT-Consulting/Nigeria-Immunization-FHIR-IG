CodeSystem: MyClinicalStatusCS
Id: my-clinical-status 
Description: "A custom CodeSystem defining clinical statuses for AEFI documentation."
* ^url = "http://nigerian.org/fhir/CodeSystem/my-clinical-status"
* ^status = #active
* ^content = #complete

* #active "Active"
* #inactive "Inactive"
* #resolved "Resolved"

ValueSet: MyClinicalStatusVS
Id: my-clinical-status-vs 
Description: "A ValueSet containing custom clinical statuses."
* ^url = "http://nigerian.org/fhir/ValueSet/my-clinical-status-vs"
* ^status = #active
* include codes from system MyClinicalStatusCS


CodeSystem: MyVerificationStatusCS
Id: my-verification-status 
Description: "A custom CodeSystem defining clinical statuses for AEFI documentation."
* ^url = "http://nigerian.org/fhir/CodeSystem/my-verification-status"
* ^status = #active
* ^content = #complete

* #confirmed "Confirmed"
* #unconfirmed "Unconfirmed" 
* #refuted "Refuted" 
* #entered-in-error "Entered in Error"


ValueSet: MyVerificationStatusVS
Id: my-verification-status-vs 
Description: "A ValueSet containing custom verification statuses."
* ^url = "http://nigerian.org/fhir/ValueSet/my-verification-status-vs"
* ^status = #active
* include codes from system MyVerificationStatusCS

