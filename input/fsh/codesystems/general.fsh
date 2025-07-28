CodeSystem: MySubstances
Id: my-substances
Title: "Custom Substance Codes"
Description: "A local code system for documenting allergy-related substances."
* ^url = "http://example.org/CodeSystem/my-substances"
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
* ^url = "http://example.org/CodeSystem/IMMZ.F.DE2"
* ^status = #active

* #male "Male"
* #female "Female"


CodeSystem: IMMZFDE6
Id: IMMZ.F.DE6
Title: "IMMZ.F.DE6 – Missed Vaccines"
Description: "IMMZFDE6 Missed Vaccines CodeSystem"
* ^url = "http://example.org/CodeSystem/IMMZ.F.DE6"
* ^status = #active

* #measles "Measles"
* #polio "Polio"

CodeSystem: IMMZC1HivStatusCS
Id: immzc1-hiv-status-cs
Title: "IMMZ.C1 HIV Status Codes"
Description: "HIV Status Code System"
* ^url     = "http://example.org/CodeSystem/immzc1-hiv-status-cs"
* ^status  = #active
* #positive "Positive"
* #negative "Negative"
* #unknown  "Unknown"