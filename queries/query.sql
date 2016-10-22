--
-- Query to fetch All individual contacts, with cases with a status of “ongoing”
-- Result Formatted AS : Contact display name, Employer organisation name, Number (count) of cases.
--

SELECT CON.display_name, CON.organization_name, count(*) AS count_of_cases from civicrm_contact AS CON
 INNER JOIN  civicrm_case_contact AS CCC ON CON.id = CCC.contact_id
 INNER JOIN  civicrm_case AS CS ON CS.id = CCC.case_id
 WHERE CON.contact_type = 'Individual' AND CS.status_id=1 GROUP BY CON.id;



