--All patients who have gone through admissions, can see their medical documents on our site. Those patients are given a temporary password after their first admission. Show the patient_id and temp_password.

--The password must be the following, in order:
--1. patient_id
--2. the numerical length of patient's last_name
--3. year of patient's birth_date

--1

select distinct p.patient_id,
concat(p.patient_id,len(last_name),year(birth_date)) as temp_password 
from patients p join admissions a on p.patient_id = a.patient_id;

--2

select
  distinct p.patient_id,
  p.patient_id || floor(len(last_name)) || floor(year(birth_date)) as temp_password
from patients p
  join admissions a on p.patient_id = a.patient_id
