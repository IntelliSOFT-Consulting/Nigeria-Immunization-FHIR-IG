CodeSystem: MySubstances
Id: my-substances
Title: "Custom Substance Codes"
Description: "A local code system for documenting allergy-related substances."
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
Title: "IMMZ.F.DE2 – Client Sex"
Description: "Client Sex CodeSystem"
* ^url = IMMZFDE2
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #male "Male"
* #female "Female"

CodeSystem: ClientRelationshipCS
Id: client-relationship
Title: "IMMZ.F.DE2 – Client Relationship"
Description: "Client Relationship CodeSystem"
* ^url = CLIENT_RELATIONSHIP
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #mother "Mother"
* #father "Father"


CodeSystem: IMMZFDE6
Id: IMMZ.F.DE6
Title: "IMMZ.F.DE6 – Missed Vaccines"
Description: "IMMZFDE6 Missed Vaccines CodeSystem"
* ^url = IMMZFDE6
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #measles "Measles"
* #polio "Polio"

CodeSystem: IMMZC1HivStatusCS
Id: immzc1-hiv-status-cs
Title: "IMMZ.C1 HIV Status Codes"
Description: "HIV Status Code System"
* ^url     = IMMZC1_HIV_STATUS_CS
* ^status  = #active
* ^caseSensitive = true
* ^experimental = false

* #positive "Positive"
* #negative "Negative"
* #unknown  "Unknown"

CodeSystem: IMMZC1StateofHealthofMothersOtherChildrenCS
Id: state-ofHealth-ofmothersOtherChildren
Title: "IMMZ.C.DE31 - Code System for State of Health of Mothers' Other Children)"
Description: "Custom codes used in NEIR immunization registration for state of health observations."
* ^url = "http://neir.org/fhir/CodeSystem/IMMZC1CustomCodes"

* #DE32 "Alive"
* #DE33 "Well"
* #DE34 "Underlying disease (specify)"
* #DE35 "Dead"