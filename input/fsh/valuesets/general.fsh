Alias: $SCT = http://snomed.info/sct

ValueSet: NEIRSubstanceVS
Id: neir-substance-vs
Title: "Allowed Allergy Substances"
Description: "NEIR Substance ValueSet"
* ^url = NEIR_SUBSTANCE_VS
* ^experimental = false
* ^status  = #active
* include codes from system MySubstances

ValueSet: IMMZDFacilityType
Id: IMMZDFacilityType
Title: "Facility Type ValueSet"
Description: "Includes codes from IMMZ.D related to facility types"
* ^url = IMMZDFACILITYTYPE
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE4
* IMMZD#IMMZ.D.DE5


ValueSet: IMMZDSessionType
Id: IMMZDSessionType
Title: "Session Type"
Description: "Session type codes from the IMMZ.D CodeSystem"
* ^url = IMMZDSESSIONTYPE
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE7
* IMMZD#IMMZ.D.DE8


ValueSet: IMMZFVaccineType
Id: IMMZFVaccineType
Title: "Vaccine Type"
Description: "Vaccine types from the IMMZ.D CodeSystem"
* ^url = IMMZFVACCINETYPE
* ^experimental = false
* ^status  = #active
* IMMZFDE6#measles
* IMMZFDE6#polio


ValueSet: IMMZDContraindications
Id: IMMZDContraindications
Title: "Contraindications"
Description: "Contraindications from the IMMZ.D CodeSystem"
* ^url = IMMZDCONTRAINDICATIONS
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE13
* IMMZD#IMMZ.D.DE14


ValueSet: IMMZDSiteAdministered
Id: IMMZDSiteAdministered
Title: "Site Administered"
Description: "Body sites for vaccine administration from IMMZ.D"
* ^url = IMMZDSITEADMINISTERED
* ^experimental = false
* ^status  = #active
* IMMZD#IMMZ.D.DE22
* IMMZD#IMMZ.D.DE23


ValueSet: IMMZDRouteOfAdministration
Id: IMMZDRouteOfAdministration
Title: "Route of Administration"
Description: "Vaccine administration routes from IMMZ.D"
* ^url = IMMZDROUTEOFADMINISTRATION
* ^experimental = false
* ^status  = #active 
* IMMZD#IMMZ.D.DE28
* IMMZD#IMMZ.D.DE29



ValueSet: IMMZFDE2VS
Id: IMMZ.F.DE2
Title: "IMMZ.F.DE2 ValueSet"
Description: "IMMZFDE ValueSet"
* ^url = IMMZFDE2_VS
* ^experimental = false
* ^status  = #active 
* include codes from system IMMZFDE2

ValueSet: IMMZFDE6VS
Id: IMMZ.F.DE6
Title: "IMMZ.F.DE6 ValueSet" 
Description: "IMMZFDE ValueSet"
* ^url = IMMZFDE6_VS
* ^experimental = false
* ^status  = #active 
* include codes from system IMMZFDE6

ValueSet: IMMZC1HivStatusVS
Id: immzc1-hiv-status-vs
Title: "IMMZ.C1 HIV Status ValueSet"
Description: "IMMZ HIV Status ValueSet"
* ^url     = IMMZC1_HIV_STATUS_VS
* ^status  = #active
* ^experimental = false 
* include codes from system IMMZC1HivStatusCS

ValueSet: PregnancyStatusVS
Id: pregnancy-status-vs
Title: "Pregnancy Status ValueSet"
Description: "ValueSet representing possible pregnancy statuses: Pregnant, Not Pregnant, and Unknown."
* include codes from system http://snomed.info/sct where concept is-a #77386006 // Optional, broad inclusion
* $SCT#77386006 "Pregnant"
* $SCT#60001007 "Not pregnant"
* $SCT#260413007 "Unknown"

ValueSet: IMMZC1StateOfHealthOtherChildrenVS
Id: state-of-health-of-other-children-vs
Title: "IMMZC1 - ValueSet for State of Health of Mother's Other Children"
Description: "ValueSet capturing the state of health of mother's other children during client record creation or update."
* ^status = #active
* ^experimental = false
* include codes from system IMMZC1StateofHealthofMothersOtherChildrenCS



ValueSet: VaccineDiluentVS
Id: vaccine-diluent-vs
Title: "IMMZI - ValueSet for Vacine Stock Levels"
Description: "ValueSet displaying the vaccines and diluents in the stock management workflow"
* ^status = #active
* ^experimental = false
* include codes from system VaccineStockCodes



ValueSet: DeviceMaterialCodeVS
Title: "Device Material ValueSet"
Description: "ValueSet for Device Material for the stock management workflow"
* ^status = #active
* ^experimental = false
* include codes from system DeviceMaterialCodes











