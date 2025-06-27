Logical: DefaulterTracing
Title: "IMMZ.F Defaulter Tracing"
Description: "A logical model for tracking immunization defaulters."
 

* clientName 1..1 string "Client's name" "The first and last name of the client."

* clientSex 1..1 CodeableConcept "Sex" "Biological sex of the client."
* clientSex ^binding.strength = #required
* clientSex ^binding.valueSet = "http://example.org/ValueSet/IMMZ.F.DE2" // Replace with actual ValueSet canonical

* clientAge 1..1 integer "Client's age" "Total number of months since the client was born."

* caregiverName 0..1 string "Caregiver's name" "Full name of the caregiver."

* caregiverPhone 0..1 string "Caregiver's phone number" "Mobile number of the caregiver."

* missedVaccine 1..* CodeableConcept "Immunization missed" "The type of vaccine missed."
* missedVaccine ^binding.strength = #required
* missedVaccine ^binding.valueSet = "http://example.org/ValueSet/IMMZ.F.DE6" // Replace with actual ValueSet canonical

* missedVaccineDate 1..1 date "Date of immunization missed" "The date immunization was due."

* missedReason 0..1 string "Reason" "Captures the reason(s) for a missed vaccination appointment."


Instance: defaulter-tracing-example
InstanceOf: DefaulterTracing
Usage: #example
Title: "Defaulter Tracing Example"
Description: "An example of a defaulter tracing record."

* clientName = "John Doe"
* clientSex.coding.system = "http://example.org/CodeSystem/IMMZ.F.DE2"
* clientSex.coding.code = #male
* clientSex.coding.display = "Male"

* clientAge = 24
* caregiverName = "Jane Doe"
* caregiverPhone = "+2348012345678"

* missedVaccine[0].coding.system = "http://example.org/CodeSystem/IMMZ.F.DE6"
* missedVaccine[0].coding.code = #measles
* missedVaccine[0].coding.display = "Measles"

* missedVaccine[1].coding.system = "http://example.org/CodeSystem/IMMZ.F.DE6"
* missedVaccine[1].coding.code = #polio
* missedVaccine[1].coding.display = "Polio"

* missedVaccineDate = "2025-02-15"
* missedReason = "Caregiver forgot the appointment."
