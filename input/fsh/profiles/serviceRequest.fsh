Profile: NEIRServiceRequest
Parent: ServiceRequest
Title: "ServiceRequest Profile - NEIR DefaulterTracingRequest"
Description: "Profiles the ServiceRequest resource to represent planned or requested immunization services within NEIR, supporting scheduling, referral, and outreach planning."

* identifier 0..1
* basedOn 
* status MS
* category 1..1 MS
* category from NEIRServiceRequestVS
* category ^short = "Category of the request e.g Defaulter Tracing | Laboratory procedure | Imaging | Counselling | Education |Surgical procedure"
* priority
* subject MS
* subject.display 1..1
* subject.reference 1..1
* authoredOn MS
* requester MS
* requester.display 1..1
* requester.reference 1..1

Instance: service-request-example
InstanceOf: ServiceRequest
Usage: #example 
Description: "An example of a service request"
* status = #active
* intent = #order
* subject = Reference(NEIRPatientExample)


Instance: neir-defaulter-tracing-request-example
InstanceOf: NEIRServiceRequest
Usage: #example 
Description: "An example of a defaulter tracing request"
* identifier.system = NEIRSERVICEREQUEST
* identifier.use = #official
* identifier.value = "123456"
* basedOn = Reference(ServiceRequest/service-request-example)
* status = #active
* intent = #order
* category.coding.system = NEIR_SERVICE_REQUEST
* category.coding.code = #NGR-001
* category.coding.display = "Defaulter Tracing"
* priority = #routine
* subject.display = "John Doe"
* subject = Reference(NEIRPatientExample)
* authoredOn = "2025-03-13"
* requester.display = "John Doe"
* requester = Reference(Practitioner/practitioner-example)
