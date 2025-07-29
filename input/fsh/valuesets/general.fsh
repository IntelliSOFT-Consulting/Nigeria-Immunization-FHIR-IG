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









