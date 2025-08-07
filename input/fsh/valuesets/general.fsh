Alias: $SCT = http://snomed.info/sct

ValueSet: NEIRSubstanceVS
Id: neir-substance-vs
Title: "NEIR ValueSet for Allowed Allergy-related Substances"
Description: "ValueSet for Allowed Allergy-related Substances from NEIR"
* ^url = NEIR_SUBSTANCE_VS
* ^experimental = false
* ^status  = #active
* include codes from system MySubstances

ValueSet: IMMZDFacilityType
Id: IMMZDFacilityType
Title: "IMMZ.D.DE2 ValueSet for Facility Type"
Description: "ValueSet for Facility type for IMMZ.D.DE2"
* ^url = IMMZDFACILITYTYPE
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE4
* IMMZD#IMMZ.D.DE5


ValueSet: IMMZDSessionType
Id: IMMZDSessionType
Title: "IMMZ.D.DE6 ValueSet for Session Type"
Description: "ValueSet for Session Type for IMMZ.D.DE6"
* ^url = IMMZDSESSIONTYPE
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE7
* IMMZD#IMMZ.D.DE8


ValueSet: IMMZFVaccineType
Id: IMMZFVaccineType
Title: "IMMZ.D.DE10 ValueSet for Vaccine Type"
Description: "ValueSet for Vaccince Type for IMMZ.D.DE10"
* ^url = IMMZFVACCINETYPE
* ^experimental = false
* ^status  = #active
* IMMZFDE6#measles
* IMMZFDE6#polio


ValueSet: IMMZDContraindications
Id: IMMZDContraindications
Title: "IMMZ.D.DE11 ValueSet for Contraindications"
Description: "ValueSet for Contradictions for IMMZ.D.DE11"
* ^url = IMMZDCONTRAINDICATIONS
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE13
* IMMZD#IMMZ.D.DE14


ValueSet: IMMZDSiteAdministered
Id: IMMZDSiteAdministered
Title: "IMMZ.D.DE21 ValueSet for Site Administered"
Description: "ValueSet for Site Administered for IMMZ.D.DE21"
* ^url = IMMZDSITEADMINISTERED
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE22
* IMMZD#IMMZ.D.DE23
* IMMZD#IMMZ.D.DE24
* IMMZD#IMMZ.D.DE25
* IMMZD#IMMZ.D.DE26


ValueSet: IMMZDRouteOfAdministration
Id: IMMZDRouteOfAdministration
Title: "IMMZ.D.DE27 ValueSet for Route of Administration"
Description: "ValueSet for Route of Administration for IMMZ.D.DE27"
* ^url = IMMZDROUTEOFADMINISTRATION
* ^experimental = false
* ^status  = #active 
* IMMZD#IMMZ.D.DE28
* IMMZD#IMMZ.D.DE29
* IMMZD#IMMZ.D.DE30
* IMMZD#IMMZ.D.DE31



ValueSet: IMMZFDE2VS
Id: IMMZ.F.DE2
Title: "IMMZ.G.DE2 ValueSet for Client Sex"
Description: "ValueSet for Client Sex for IMMZ.G.DE2"
* ^url = IMMZFDE2_VS
* ^experimental = false
* ^status  = #active 
* include codes from system IMMZFDE2

ValueSet: IMMZFDE6VS
Id: IMMZ.F.DE6
Title: "IMMZ.G.DE6 ValueSet for missed immunization" 
Description: "ValueSet for Missed Immunization for IMMZ.G.DE6"
* ^url = IMMZFDE6_VS
* ^experimental = false
* ^status  = #active 
* include codes from system IMMZFDE6

ValueSet: IMMZC1HivStatusVS
Id: immzc1-hiv-status-vs
Title: "IMMZ.C.DE37 ValueSet for HIV Status"
Description: "ValueSet for HIV Status for IMMZ.C.DE37"
* ^url     = IMMZC1_HIV_STATUS_VS
* ^status  = #active
* ^experimental = false 
* include codes from system IMMZC1HivStatusCS

ValueSet: PregnancyStatusVS
Id: pregnancy-status-vs
Title: "IMMZ.C.DE41 ValueSet for Pregnancy Status"
Description: "ValueSet for Pregnancy Status for IMMZ.C.DE41"
* include codes from system http://snomed.info/sct where concept is-a #77386006 // Optional, broad inclusion
* $SCT#77386006 "Pregnant"
* $SCT#60001007 "Not pregnant"
* $SCT#260413007 "Unknown"

ValueSet: IMMZC1StateOfHealthOtherChildrenVS
Id: state-of-health-of-other-children-vs
Title: "IMMZ.C.DE31 ValueSet for State of Health of Mother's Other Children"
Description: "ValueSet for state of health of mother's other children for IMMZ.C.DE31"
* ^status = #active
* ^experimental = false
* include codes from system IMMZC1StateofHealthofMothersOtherChildrenCS









