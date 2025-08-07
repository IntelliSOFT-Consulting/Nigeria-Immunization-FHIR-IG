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
Title: "IMMZ.C.DE31 - Code System for State of Health of Mothers' Other Children"
Description: "Custom codes used in NEIR immunization registration for state of health observations."
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

