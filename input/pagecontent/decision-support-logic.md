The decision-support logic component of the adaptation kit provides the decision-support logic and algorithms, as well as the scheduling of services, in accordance with WHO guidelines. In this DAK, the decision logic and algorithms deconstruct the recommendations within the immunization guidelines and guidance into a format that clearly labels the inputs and outputs that would be operationalized in a digital decision-support system.

### Decision Support Logic Overview

The table below provides an overview of the decision-support tables and algorithms for the different business processes in an Immunization system. The structure of the decision-support tables is based on an adaptation of the Decision Model and Notation (DMN), an industry standard for modeling and executing decision logic. These decision-support tables detail the business rules, data inputs, and outputs to support IIS business processes. 

Table 7: Decision Support Logic Overview
<table border="1" class="dataframe table table-striped table-bordered">

    <thead>
        <tr class="header">
            <th>Activity ID & Activity Name</th>
            <th>Tab</th>
            <th>Decision Table ID</th>
            <th>Decision Table Description</th>
            <th>Reference/Source</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>IMMZ.D2 Determine required vaccinations</td>
            <td>BCG Vaccine</td>
            <td>IMMZ.DT.01</td>
            <td>Recommended vaccinations for Bacille Calmette-Guerin (BCG) as per recommendations by WHO and Nigeria</td>
            <td>Nigeria National Immunization policy draft <br> 
            <a href="https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables" target="_blank">WHO Recommendations on Routine Immunization</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Hepatitis B Vaccine</td>
            <td>IMMZ.DT.02</td>
            <td>Recommended vaccinations for Hepatitis B as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Polio Vaccine</td>
            <td>IMMZ.DT.03</td>
            <td>Recommended vaccinations for Polio as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>DTP+HepB+Hib (Pentavalent) Vaccine</td>
            <td>IMMZ.DT.04</td>
            <td>Recommended vaccinations for Diphtheria, Pertussis, and Tetanus (DPT)-containing vaccines + HepB + Hib (Penta) as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Pneumococcal Vaccine</td>
            <td>IMMZ.DT.06</td>
            <td>Recommended vaccinations for pneumococcal as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Rota virus Vaccine</td>
            <td>IMMZ.DT.07</td>
            <td>Recommended vaccinations for Rota virus as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Measles Vaccine</td>
            <td>IMMZ.DT.08</td>
            <td>Recommended vaccinations for measles as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Malaria Vaccine</td>
            <td>IMMZ.DT.09</td>
            <td>Recommended vaccinations for Malaria as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Human Papilloma Vaccine</td>
            <td>IMMZ.DT.10</td>
            <td>Recommended vaccinations for HPV as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Yellow fever Vaccine</td>
            <td>IMMZ.DT.11</td>
            <td>Recommended vaccinations for Yellow fever as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Meningococcal Vaccine</td>
            <td>IMMZ.DT.13</td>
            <td>Recommended vaccinations for Meningococcal as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Vitamin A supplementation</td>
            <td>IMMZ.DT.14</td>
            <td>Recommended Vitamin A supplementation as per Nigeria recommendations</td>
            <td></td>
        </tr>
    </tbody>

</table>

### Decision-support Tables

Each of the decision logic above have been elaborated on in decision support tables. Below we have highlighted an example of what each component of the decision support table means and highlighted an example of the Yellow fever vaccine decision support table.

<table border="1" class="dataframe table table-striped table-bordered">
   <thead>
<tr class="header"> <th  >Decision ID</th>

            <th colspan="4">The name of the “decision” describing what algorithm or logic is represented (e.g. pre-eclampsia risk counselling). The Decision ID should correspond to the number in the overview table on "overview" tab</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="4">The description of the decision that needs to be made based on IF/THEN statements with the appropriate data element name for the variables. The rule should demonstrate the relationship between the input variables and the expected outputs and actions within the decision-support logic – e.g. if blood pressure is higher than 140 SBP/90 DBP, then the client should be flagged as a high-risk pregnancy.</th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="4">The event that would indicate when this decision-support logic should appear within the workflow, such as the activity that would trigger this decision to be made.</th>
            </tr>
            </thead>
              <thead>

<tr class="header">

             <th colspan="2">Inputs</th>
            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
        </tr>
    </thead>

   <tbody>

        <tr>
            <td >These are the variables or conditions that need to be considered to determine the consequent actions or outputs.</td>
            <td >If there are multiple input entries on the same row (such as here), these different inputs are considered as “AND” – conditions that need to be in place at the same time.</td>
            <td>The resulting action or decision based on the combination of input entries. This is the statement that immediately follows the “THEN”. Examples of outputs may include a diagnosis, alerts/prompts for referral, or a recommendation to vaccinate.</td>
            <td>Concrete measures to be taken based on the output (refer, provide treatment and/or counselling, conduct test, etc.). In some cases, output and action may be the same.</td>
            <td>Additional explanations or descriptions, including possible pop-up alert messages and relevant background information. This section can also include the written content which would appear in the pop-up messages notifying the health worker on the appropriate next steps, which can include counselling, case management approach, or referral.</td>
        </tr>
        <tr>
            <td >Inputs placed on different rows are considered as <b>“OR”</b> conditions that can be considered independently of the inputs on other rows.</td>
            <td ></td>
              <td ></td>
               <td ></td>
        </tr>
    </tbody>

</table>

 Table 9 . Example decision logic table for Yellow Fever vaccination

<table border="1" class="dataframe table table-striped table-bordered">
   <thead>
<tr class="header"> <th>Decision ID</th>

            <th  colspan="5"> IMMZ.DT.06.Yellow Fever</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5">If child or person has not been vaccinated, give Yellow Fever vaccine between age 9-12 months</th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> IMMZ.D2 Determine Required Vaccinations if any</th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>

    <td>"Number of doses administered" = 0</td>
    <td>"Age in Months" >= 9</td> 
    <td> Client vaccinated for Yellow Fever - No Doses</td>
    <td>Should vaccinate Client for Yellow Fever because Client received no doses on a 1 dose scheme</td>
    <td>Provide Yellow Fever immunizations – using the "Yellow Fever vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
    <br>
    <strong>Note:</strong><br>
    This dose is applicable if the following scenarios are met:<br>

    - The country has a Yellow Fever endemic<br>
    - The individual is travelling to a Yellow Fever endemic area<br>
    - The child is 9 months old.<br>
    <br>
    </td>
    <td>
     <a href="https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables" target="_blank">WHO Recommendations for Routine Immunization</a><br>

   <br>

    Nigeria National Immunization Policy Draft

</td>

</tr>
</tbody>
</table>

#### BCG

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5">IMMZ.DT.01.BCG</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5">If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth</th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> IMMZ.D2 Determine Required Vaccinations if any </th>
            </tr>
            </thead>
    <thead>
<tr class="header">
 <th colspan="2">Inputs</th>
            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>


#### Polio

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>


#### Yellow Fever

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>


#### Measles

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Pneumococcal

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>


#### DPT Hep B-Hib

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Rotavirus

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### HPV

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>


#### Vitamin A

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>


#### Malaria

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Covid 19

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>


#### Meningococcal
<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Td for pregnant women

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>
            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>