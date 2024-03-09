--Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name
--1
SELECT pr.province_name
FROM patients AS pa
  JOIN province_names AS pr ON pa.province_id = pr.province_id
GROUP BY pr.province_name
HAVING
  COUNT( CASE WHEN gender = 'M' THEN 1 END) > COUNT( CASE WHEN gender = 'F' THEN 1 END);

--2

SELECT province_name
FROM (
    SELECT
      province_name,
      SUM(gender = 'M') AS n_male,
      SUM(gender = 'F') AS n_female
    FROM patients pa
      JOIN province_names pr ON pa.province_id = pr.province_id
    GROUP BY province_name
  )
WHERE n_male > n_female

--3

SELECT province_name from province_names
WHERE province_id IN 
(SELECT province_id
FROM patients
group by province_id 
having SUM(gender = 'M') > SUM(gender = 'F'))
