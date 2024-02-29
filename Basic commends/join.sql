--Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.

--1

select a.patient_id,first_name,last_name from patients
join admissions a on patients.patient_id = a.patient_id
where diagnosis = "Dementia";

