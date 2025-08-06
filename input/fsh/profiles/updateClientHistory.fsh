Profile: IMMZC1UpdateClientHistory
Parent: QuestionnaireResponse
Title: "IMMZ.C1 Update Client History"
Description: "FHIR Profile representing a completed client immunization update form."

* questionnaire 1..1
* item 1..*
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open

* item contains
    clientCompletedPrimarySeries 1..1 and
    hivStatus 1..1 and
    bcgDoseDate 0..1 and
    hepB0DoseDate 0..1 and
    polioBopv0DoseDate 0..1 and
    pentavalent1DoseDate 0..1 and
    opv1DoseDate 0..1 and
    pcv1DoseDate 0..1 and
    rotavirus1DoseDate 0..1 and
    ipv1DoseDate 0..1 and
    opv2DoseDate 0..1 and
    pcv2DoseDate 0..1 and
    pentavalent2DoseDate 0..1 and
    rotavirus2DoseDate 0..1 and
    opv3DoseDate 0..1 and
    pentavalent3DoseDate 0..1 and
    pcv3DoseDate 0..1 and
    rotavirus3DoseDate 0..1 and
    ipv2DoseDate 0..1 and
    malaria1DoseDate 0..1 and
    vitaminA1DoseDate 0..1 and
    malaria2DoseDate 0..1 and
    malaria3DoseDate 0..1 and
    mr1DoseDate 0..1 and
    yellowFeverDoseDate 0..1 and
    menADoseDate 0..1 and
    vitaminA2DoseDate 0..1 and
    mr2DoseDate 0..1 and
    malaria4DoseDate 0..1 and
    td1DoseDate 0..1 and
    td2DoseDate 0..1 and
    td3DoseDate 0..1 and
    td4DoseDate 0..1 and
    td5DoseDate 0..1 and
    llinGivenDate 0..1 and
    state 0..1 and
    comments 0..1 and
    reportingOfficerName 0..1 and
    designation 0..1 and
    signature 0..1

* item[clientCompletedPrimarySeries].linkId = "clientCompletedPrimarySeries"
* item[clientCompletedPrimarySeries].answer.valueBoolean 1..1

* item[hivStatus].linkId = "hivStatus"
* item[hivStatus].answer.valueCoding from IMMZC1_HIV_STATUS_VS (required)

* item[bcgDoseDate].linkId = "bcgDoseDate"
* item[bcgDoseDate].answer.valueDate 0..1

* item[hepB0DoseDate].linkId = "hepB0DoseDate"
* item[hepB0DoseDate].answer.valueDate 0..1

* item[polioBopv0DoseDate].linkId = "polioBopv0DoseDate"
* item[polioBopv0DoseDate].answer.valueDate 0..1

* item[pentavalent1DoseDate].linkId = "pentavalent1DoseDate"
* item[pentavalent1DoseDate].answer.valueDate 0..1

* item[opv1DoseDate].linkId = "opv1DoseDate"
* item[opv1DoseDate].answer.valueDate 0..1

* item[pcv1DoseDate].linkId = "pcv1DoseDate"
* item[pcv1DoseDate].answer.valueDate 0..1

* item[rotavirus1DoseDate].linkId = "rotavirus1DoseDate"
* item[rotavirus1DoseDate].answer.valueDate 0..1

* item[ipv1DoseDate].linkId = "ipv1DoseDate"
* item[ipv1DoseDate].answer.valueDate 0..1

* item[opv2DoseDate].linkId = "opv2DoseDate"
* item[opv2DoseDate].answer.valueDate 0..1

* item[pcv2DoseDate].linkId = "pcv2DoseDate"
* item[pcv2DoseDate].answer.valueDate 0..1

* item[pentavalent2DoseDate].linkId = "pentavalent2DoseDate"
* item[pentavalent2DoseDate].answer.valueDate 0..1

* item[rotavirus2DoseDate].linkId = "rotavirus2DoseDate"
* item[rotavirus2DoseDate].answer.valueDate 0..1

* item[opv3DoseDate].linkId = "opv3DoseDate"
* item[opv3DoseDate].answer.valueDate 0..1

* item[pentavalent3DoseDate].linkId = "pentavalent3DoseDate"
* item[pentavalent3DoseDate].answer.valueDate 0..1

* item[pcv3DoseDate].linkId = "pcv3DoseDate"
* item[pcv3DoseDate].answer.valueDate 0..1

* item[rotavirus3DoseDate].linkId = "rotavirus3DoseDate"
* item[rotavirus3DoseDate].answer.valueDate 0..1

* item[ipv2DoseDate].linkId = "ipv2DoseDate"
* item[ipv2DoseDate].answer.valueDate 0..1

* item[malaria1DoseDate].linkId = "malaria1DoseDate"
* item[malaria1DoseDate].answer.valueDate 0..1

* item[vitaminA1DoseDate].linkId = "vitaminA1DoseDate"
* item[vitaminA1DoseDate].answer.valueDate 0..1

* item[malaria2DoseDate].linkId = "malaria2DoseDate"
* item[malaria2DoseDate].answer.valueDate 0..1

* item[malaria3DoseDate].linkId = "malaria3DoseDate"
* item[malaria3DoseDate].answer.valueDate 0..1

* item[mr1DoseDate].linkId = "mr1DoseDate"
* item[mr1DoseDate].answer.valueDate 0..1

* item[yellowFeverDoseDate].linkId = "yellowFeverDoseDate"
* item[yellowFeverDoseDate].answer.valueDate 0..1

* item[menADoseDate].linkId = "menADoseDate"
* item[menADoseDate].answer.valueDate 0..1

* item[vitaminA2DoseDate].linkId = "vitaminA2DoseDate"
* item[vitaminA2DoseDate].answer.valueDate 0..1

* item[mr2DoseDate].linkId = "mr2DoseDate"
* item[mr2DoseDate].answer.valueDate 0..1

* item[malaria4DoseDate].linkId = "malaria4DoseDate"
* item[malaria4DoseDate].answer.valueDate 0..1

* item[td1DoseDate].linkId = "td1DoseDate"
* item[td1DoseDate].answer.valueDate 0..1

* item[td2DoseDate].linkId = "td2DoseDate"
* item[td2DoseDate].answer.valueDate 0..1

* item[td3DoseDate].linkId = "td3DoseDate"
* item[td3DoseDate].answer.valueDate 0..1

* item[td4DoseDate].linkId = "td4DoseDate"
* item[td4DoseDate].answer.valueDate 0..1

* item[td5DoseDate].linkId = "td5DoseDate"
* item[td5DoseDate].answer.valueDate 0..1

* item[llinGivenDate].linkId = "llinGivenDate"
* item[llinGivenDate].answer.valueDate 0..1

* item[state].linkId = "state"
* item[state].answer.valueString 0..1

* item[comments].linkId = "comments"
* item[comments].answer.valueString 0..1

* item[reportingOfficerName].linkId = "reportingOfficerName"
* item[reportingOfficerName].answer.valueString 0..1

* item[designation].linkId = "designation"
* item[designation].answer.valueString 0..1

* item[signature].linkId = "signature"
* item[signature].answer.valueString 0..1
