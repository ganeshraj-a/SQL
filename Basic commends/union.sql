--Show first name, last name and role of every person that is either patient or doctor.
--The roles are either "Patient" or "Doctor"

select first_name, last_name, 'Patient' as role 
  from patients
union all
select first_name, last_name, 'Doctor' as role
  from doctors;
