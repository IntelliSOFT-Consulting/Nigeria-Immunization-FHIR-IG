Invariant:   neir-imm-1
Description: "If the status is not-done, a reason must be provided"
Severity:    #error
Expression:  "status != 'not-done' xor statusReason.exists()"

Invariant : PatientIdentification-1
Description :  "The Patient profile SHALL have at least one identifier \"NationaID\" or \"BirthCertificate\" or \"PhoneNumber\"."
Expression : "identifier.slice('http://example.org/StructureDefinition/neir-patient','NationalIDNo').count() + identifier.slice('http://example.org/StructureDefinition/neir-patient','PhoneNumber').count()+ identifier.slice('http://example.org/StructureDefinition/neir-patient','BirthCertificateNo').count() > 0"
Severity : #error

Invariant : MustHavePhoneNumber-1
Description : "At least one telecom entry must have system = 'phone' and a value."
Expression : "telecom.where(system = 'phone' and value.exists()).exists()"
Severity : #error
