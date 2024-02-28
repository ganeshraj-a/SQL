--Show unique first names from the patients table which only occurs once in the list.

--For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.


--1
select first_name as ct from patients 
group by first_name
having count(ct) = 1;

--2
SELECT first_name
FROM (
    SELECT
      first_name,
      count(first_name) AS occurrencies
    FROM patients
    GROUP BY first_name
  )
WHERE occurrencies = 1
