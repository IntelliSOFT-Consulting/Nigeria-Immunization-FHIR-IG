CodeSystem: NEIRFacilityTypeCS
Id: neir-facility-type 
Title: "NEIR CodeSystem for Facility Type"
Description: "CodeSystem for NEIR Facility Type"
* ^url = NEIR_FACILITY_TYPE
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false

* #IMMZ.D.DE3  "Public"
* #IMMZ.D.DE4  "Private"
* #IMMZ.D.DE5  "Faith-based"


CodeSystem: NEIRSessionTypeCS
Id: neir-session-type 
Title: "NEIR CodeSystem for Session Type"
Description: "CodeSystem for NEIR Session Type"
* ^url = NEIR_SESSION_TYPE
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false

* #fixed "Fixed"
* #outreach "Outreach" 
* #mobile "Mobile" 


CodeSystem: NEIRImmunizationNotDoneReasonsCS
Id: neir-immunization-not-done 
Title: "NEIR CodeSystem for Immunization Not Done"
Description: "CodeSystem for NEIR Immunization Not Done"
* ^url = NEIR_IMMUNIZATION_NOT_DONE
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false

* #medical-contraindication "Medical contraindication" "Vaccine not given due to temporary or permanent medical reason"
* #acute-illness "Acute illness" "Client was sick or febrile at time of visit"
* #vaccine-unavailable "Vaccine unavailable" "Stockout or vaccine expired"
* #cold-chain-issue "Cold chain failure" "Vaccine compromised due to temperature excursion"
* #staff-unavailable "No trained staff" "No vaccinator present to administer vaccine"
* #refused-by-caregiver "Refused by caregiver" "Caregiver declined vaccine for child"
* #arrived-late "Arrived late" "Client arrived after vaccination hours"
* #not-eligible-age "Not eligible by age" "Child too young or too old for vaccine"
* #pregnant "Pregnant" "Vaccine not appropriate due to pregnancy"
* #duplicate-record "Already vaccinated" "Vaccination recorded elsewhere"
* #no-consent "No consent" "Consent not provided by client or guardian"
* #not-due "Not due yet" "Scheduled date is in the future"