
ValueSet: EncounterClassVS
Id: immunization-encounter-class-vs
Title: "Immunization Encounter Class ValueSet"
Description: "A ValueSet defining encounter types for immunization services in the Nigerian Electronic Immunization Registry (NEIR)."
* ^url = IMMUNIZATION_ENCOUNTER_CLASS_VS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false 
* include V3ActCode#AMB "Ambulatory"
* include V3ActCode#HH "Home Health"
* include V3ActCode#FLD "Field"
* include V3ActCode#VR "Virtual"
