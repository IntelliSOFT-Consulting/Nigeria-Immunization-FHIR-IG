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




CodeSystem: VaccineStockCodes
Title: "IMMZ.I Vaccine Stock Codes"
Description: "Vaccine Stock Codes"
* ^url = VACCINE_STOCK
* #vaccine-stock "Vaccine stock observation"
* #IMMZ.I.DE1	"BCG Vaccines"
* #IMMZ.I.DE8	"BCG Diluents"
* #IMMZ.I.DE15	"Hep B Vaccine"
* #IMMZ.I.DE22	"OPV Vaccine"
* #IMMZ.I.DE29	"PENTA Vaccine"
* #IMMZ.I.DE36	"PCV Vaccine"
* #IMMZ.I.DE43	"IPV Vaccine"
* #IMMZ.I.DE50	"Rotavirus Vaccine"
* #IMMZ.I.DE57	"Measles Vaccine"
* #IMMZ.I.DE64	"Measles diluents"
* #IMMZ.I.DE71	"Yellow Fever Vaccine"
* #IMMZ.I.DE78	"Yellow Fever Diluent"
* #IMMZ.I.DE85	"Men A Vaccine"
* #IMMZ.I.DE92	"Men A Diluents"
* #IMMZ.I.DE99	"HPV Vaccine"
* #IMMZ.I.DE106 "Td Vaccine"
* #opening-balance "Opening balance"
* #received "Doses received"
* #doses-opened "Doses opened"
* #ending-balance "Ending balance"
* #returned "Quantity returned"
* #empty-vials "Empty vials returned"


CodeSystem: DeviceMaterialCodes
Id: device-material-codes
Title: "Device and Material Codes"
* ^url = DEVICE_MATERIAL
* #bcg-syringes "BCG syringes"
* #2ml-syringes "2ml Syringes"
* #ad-syringes "AD syringes"
* #ice-packs "Ice packs"
* #vaccine-carrier "Vaccine carrier"
* #cold-boxes "Cold boxes"
* #vaccine-fridges "Vaccine fridges"
* #muac-stripes "MUAC Stripes"

* #functional "Functional"
* #non-functional "Non-functional"
* #opening-balance "Opening Balances"
    "Quantities of vaccines, diluents, or devices in stock at the beginning of a reporting period."

* #quantity-received "Quantities Received"
    "Total units of vaccines, diluents, or devices received at the facility during the reporting period."

* #quantity-used "Quantities Used"
    "Units of vaccines, diluents, or devices used during the reporting period."

* #closing-balance "Closing Balances"
    "Quantities of vaccines, diluents, or devices remaining at the end of the reporting period."

* #quantity-returned "Quantities Returned"
    "Units of vaccines, diluents, or devices returned to the central or higher-level store."

* #status-of-devices "Statuses of Devices"
    "General condition or operational state of cold chain or immunization devices."

* #functional-devices "Functional Devices"
    "Devices that are in good working condition and capable of performing their intended function."

* #non-functional-devices "Non-Functional Devices"
    "Devices that are broken, malfunctioning, or unable to perform their intended function."

