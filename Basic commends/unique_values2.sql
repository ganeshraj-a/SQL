SELECT year(birth_date)
FROM patients
GROUP BY year(birth_date)
