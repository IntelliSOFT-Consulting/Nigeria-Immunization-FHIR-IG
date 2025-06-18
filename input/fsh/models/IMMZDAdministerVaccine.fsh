Logical: AdministerVaccine
Title: "IMMZ.D Administer Vaccine"
Description: "A logical model for capturing vaccine administration details"

* nameOfHealthFacility 1..1 string "Name of health facility" "Name of the facility where the vaccination is taking place."
  * ^code[+] = #IMMZ.D.DE1

* facilityType 1..1 CodeableConcept "Facility type" "The type of health facility. Uses the IMMZ.D CodeSystem."
* facilityType from http://example.org/fhir/ValueSet/IMMZDFacilityType (required)

* sessionType 1..1 CodeableConcept "Session type" "Type of immunization session. Uses the IMMZ.D CodeSystem."
* sessionType from http://example.org/fhir/ValueSet/IMMZDSessionType (required)

* vaccineType 1..1 CodeableConcept "Vaccine type" "Type of vaccine administered. Uses IMMZ.F Vaccine Library codes."
* vaccineType from http://example.org/fhir/ValueSet/IMMZFVaccineType (required)

* contraindicated 0..1 boolean "Contraindicated" "Immunization not recommended due to contraindications."

* contraindications 0..* CodeableConcept "Contraindications to immunization" "Specific situations where certain vaccines should not be administered. Uses the IMMZ.D CodeSystem."
* contraindications from http://example.org/fhir/ValueSet/IMMZDContraindications (required)

* vaccinationDateTime 1..1 dateTime "Date and time of vaccination" "The date and time the vaccine was administered."

* vaccineAdministeringCenter 1..1 string "Vaccine Administering Center" "Facility where vaccine was administered."

* vaccineBatchNumber 1..1 string "Vaccine batch number" "Batch or lot number of vaccine."

* expirationDate 1..1 date "Expiration date" "Expiration date of the vaccine. Use last day of the month if only month is given."

* siteAdministered 1..1 CodeableConcept "Site administered" "Body site where vaccine was administered. Uses the IMMZ.D CodeSystem."
* siteAdministered from http://example.org/fhir/ValueSet/IMMZDSiteAdministered (required)

* routeOfAdministration 1..1 CodeableConcept "Route of administration" "Route of delivery of the vaccine. Uses the IMMZ.D CodeSystem."
* routeOfAdministration from http://example.org/fhir/ValueSet/IMMZDRouteOfAdministration (required)

* doseQuantity 1..1 Quantity "Dose quantity" "Quantity of vaccine product administered."

* healthWorkerIdentifier 1..1 string "Health worker identifier" "Person, organization, or role of the vaccinator. Can be populated from a Health Worker Registry."



Instance: vaccine-administration-example
InstanceOf: AdministerVaccine
Title: "Example Vaccine Administration Record"
Description: "An example instance demonstrating the use of the Administer Vaccine Logical Model."

* nameOfHealthFacility = "Sunrise Health Clinic"
* facilityType = #IMMZ.D.DE4 "Private"
* sessionType = #IMMZ.D.DE7 "Fixed"
* vaccineType = #IMMZ.D.DE11 "Measles Vaccine"
* contraindicated = false
* contraindications[+] = #IMMZ.D.DE14 "Severe AEFI"
* vaccinationDateTime = "2025-03-20T10:30:00Z"
* vaccineAdministeringCenter = "Sunrise Health Clinic - Immunization Wing"
* vaccineBatchNumber = "BATCH12345"
* expirationDate = "2026-06-30"
* siteAdministered = #IMMZ.D.DE23 "Left upper arm"
* routeOfAdministration = #IMMZ.D.DE29 "Intramuscular"
* doseQuantity = 0.5 'mL' "Dose"
* healthWorkerIdentifier = "HW-56789"
