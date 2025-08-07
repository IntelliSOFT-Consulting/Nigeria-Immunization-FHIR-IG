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
* IMMZD#DE4
* IMMZD#DE5


ValueSet: IMMZDSessionType
Id: IMMZDSessionType
Title: "IMMZ.D.DE6 ValueSet for Session Type"
Description: "ValueSet for Session Type for IMMZ.D.DE6"
* ^url = IMMZDSESSIONTYPE
* ^experimental = false
* ^status  = #active
* IMMZD#DE7
* IMMZD#DE8


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
* IMMZD#DE13
* IMMZD#DE14
* IMMZD#DE15
* IMMZD#DE16


ValueSet: IMMZDSiteAdministered
Id: IMMZDSiteAdministered
Title: "IMMZ.D.DE21 ValueSet for Site Administered"
Description: "ValueSet for Site Administered for IMMZ.D.DE21"
* ^url = IMMZDSITEADMINISTERED
* ^experimental = false
* ^status  = #active
* IMMZD#DE22
* IMMZD#DE23
* IMMZD#DE24
* IMMZD#DE25
* IMMZD#DE26


ValueSet: IMMZDRouteOfAdministration
Id: IMMZDRouteOfAdministration
Title: "IMMZ.D.DE27 ValueSet for Route of Administration"
Description: "ValueSet for Route of Administration for IMMZ.D.DE27"
* ^url = IMMZDROUTEOFADMINISTRATION
* ^experimental = false
* ^status  = #active 
* IMMZD#DE28
* IMMZD#DE29
* IMMZD#DE30
* IMMZD#DE31



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











