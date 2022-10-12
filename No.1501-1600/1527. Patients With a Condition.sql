# Write your MySQL query statement below


select patient_id, patient_name, conditions
from Patients
where conditions regexp '^DIAB1' OR conditions regexp ' DIAB1';
# where conditions LIKE 'DIAB1%' || conditions LIKE '% DIAB1%';
