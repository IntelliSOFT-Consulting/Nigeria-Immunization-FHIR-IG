CodeSystem: MySubstances
Id: my-substances
Title: "NEIR CodeSystem for Allergy-related Substance"
Description: "CodeSystem for Allery-related Substance from NEIR"
* ^url = MY_SUBSTANCES
* ^version = "1.0.0"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false

* #1160593008 "Peanut protein"
* #MILK_PROTEIN "Milk protein"
* #EGG_WHITE "Egg white"
* #SOY_PROTEIN "Soy protein"



CodeSystem: IMMZFDE2
Id: IMMZ.F.DE2
Title: "IMMZ.G.DE2 CodeSystem for Client Sex"
Description: "CodeSytsem for IMMZ.G.DE2 Client Sex"
* ^url = IMMZFDE2
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #male "Male"
* #female "Female"

CodeSystem: ClientRelationshipCS
Id: client-relationship
Title: "IMMZ.F.DE2 CodeSystem for Client Relationship"
Description: "CodeSystem for IMMZ.F.DE2 Client Relationship"
* ^url = CLIENT_RELATIONSHIP
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #mother "Mother"
* #father "Father"


CodeSystem: IMMZFDE6
Id: IMMZ.F.DE6
Title: "IMMZ.G.DE6 CodeSystem for Missed Vaccines"
Description: "CodeSystem for IMMZ.G.DE6 Missed Vaccine"
* ^url = IMMZFDE6
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #measles "Measles"
* #polio "Polio"

CodeSystem: IMMZC1HivStatusCS
Id: immzc1-hiv-status-cs
Title: "IMMZ.C.DE37 CodeSystem for HIV Status"
Description: "CodeSystems for IMMZ.C.DE37 HIV Status"
* ^url     = IMMZC1_HIV_STATUS_CS
* ^status  = #active
* ^caseSensitive = true
* ^experimental = false

* #positive "Positive"
* #negative "Negative"
* #unknown  "Unknown"

CodeSystem: IMMZC1StateofHealthofMothersOtherChildrenCS
Id: state-ofHealth-ofmothersOtherChildren
Title: "IMMZ.C.DE31 CodeSystem for State of Health of Mothers' Other Children"
Description: "CodeSystem for IMMZ.C.DE31 State of Health of Mothers' Other Children"
* ^url = "http://neir.org/fhir/CodeSystem/IMMZC1CustomCodes"

* #DE32 "Alive"
* #DE33 "Well"
* #DE34 "Underlying disease (specify)"
* #DE35 "Dead"