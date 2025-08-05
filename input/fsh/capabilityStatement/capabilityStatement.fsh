Instance: NEIRFHIRIGCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* id = "NEIRFHIRIGCapabilityStatement"
* name = "NigeriaImmunizationFHIRIGCapabilityStatement"
* title = "NEIR FHIR IG Capability Statement"
* description = "This CapabilityStatement outlines the conformance requirements for systems implementing the Nigerian Electronic Immunization Registry (NEIR) FHIR Implementation Guide. It specifies the supported FHIR resources, profiles, interactions, and system behaviors required to enable standardized capture, exchange, and retrieval of immunization-related data. The statement supports interoperability between health facilities, mobile vaccination units, outreach programs, and national systems to improve immunization tracking and service delivery across Nigeria’s digital health ecosystem."
* version = "0.1.0"
* status = #active
* date = "2025-08-05"
* publisher = "IntelliSOFT Consulting Ltd, Kenya"
* kind = #requirements // #instance
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml

* rest[0].mode = #server
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = Canonical(NEIRPatient)
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[1].code = #search-type

* rest[0].resource[1].type = #Practitioner
* rest[0].resource[1].profile = Canonical(NEIRPractitioner)
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[1].code = #search-type

* rest[0].resource[2].type = #Organization
* rest[0].resource[2].profile = Canonical(NEIROrganization)
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[1].code = #search-type


* rest[0].resource[3].type = #AllergyIntolerance
* rest[0].resource[3].profile = Canonical(NEIRAllergyIntolerance)
* rest[0].resource[3].interaction[0].code = #read
* rest[0].resource[3].interaction[1].code = #search-type
* rest[0].resource[3].interaction[2].code = #create
* rest[0].resource[3].interaction[3].code = #update

* rest[0].resource[4].type = #Immunization
* rest[0].resource[4].profile = Canonical(NEIRImmunization)
* rest[0].resource[4].interaction[0].code = #read
* rest[0].resource[4].interaction[1].code = #search-type
* rest[0].resource[4].interaction[2].code = #create
* rest[0].resource[4].interaction[3].code = #update

* rest[0].resource[5].type = #RelatedPerson
* rest[0].resource[5].profile = Canonical(NEIRRelatedPerson)
* rest[0].resource[5].interaction[0].code = #read
* rest[0].resource[5].interaction[1].code = #search-type
* rest[0].resource[5].interaction[2].code = #create
* rest[0].resource[5].interaction[3].code = #update

* rest[0].resource[6].type = #ServiceRequest
* rest[0].resource[6].profile = Canonical(NEIRServiceRequest)
* rest[0].resource[6].interaction[0].code = #read
* rest[0].resource[6].interaction[1].code = #search-type
* rest[0].resource[6].interaction[2].code = #create
* rest[0].resource[6].interaction[3].code = #update

* rest[0].resource[7].type = #ImmunizationRecommendation
* rest[0].resource[7].profile = Canonical(NEIRImmunizationRecommendation)
* rest[0].resource[7].interaction[0].code = #read
* rest[0].resource[7].interaction[1].code = #search-type
* rest[0].resource[7].interaction[2].code = #create
* rest[0].resource[7].interaction[3].code = #update

* rest[0].resource[8].type = #Encounter
* rest[0].resource[8].profile = Canonical(NEIREncounter)
* rest[0].resource[8].interaction[0].code = #read
* rest[0].resource[8].interaction[1].code = #search-type
* rest[0].resource[8].interaction[2].code = #create
* rest[0].resource[8].interaction[3].code = #update


