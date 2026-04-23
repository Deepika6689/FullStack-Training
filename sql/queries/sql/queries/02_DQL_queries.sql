-- ============================================================
-- SKILLHUB DATABASE - DQL Queries
-- Author  : [Your Name]
-- Created : 2025
-- Description : Data Query Language (SELECT) practice queries
--               on the EMPS table
-- ============================================================
 
-- ----------------------------------------------------------------
-- BASIC SELECT QUERIES
-- ----------------------------------------------------------------
 
-- Q1. Employee first name and last name
SELECT FNAME, LNAME
FROM EMPS;
 
-- Q2. Employee first name, job, salary and date of birth
SELECT FNAME, JOB, SAL, DOB
FROM EMPS;
 
-- Q3. All details of employees
SELECT *
FROM EMPS;
 
-- ----------------------------------------------------------------
-- CALCULATED COLUMNS
-- ----------------------------------------------------------------
 
-- Q4. First name, status and annual salary
SELECT FNAME, STATUS, SAL * 12
FROM EMPS;
 
-- Q5. All details along with annual commission
SELECT *, COMM * 12
FROM EMPS;
 
-- Q6. First name, job and salary with 25000 bonus
SELECT FNAME, JOB, SAL + 25000
FROM EMPS;
 
-- Q7. First name, status, LID and salary with 10% hike
-- Formula: SAL + (SAL * %HIKE / 100)
SELECT FNAME, STATUS, LID, SAL + (SAL * 10 / 100)
FROM EMPS;
 
-- Q8. First name, job, customer ID and salary with 20% hike
SELECT FNAME, JOB, CID, SAL + (SAL * 20 / 100)
FROM EMPS;
 
-- Q9. First name and salary with 30% deduction
SELECT FNAME, SAL - (SAL * 30 / 100)
FROM EMPS;
 
-- Q10. First name, commission with 15% hike and annual salary with 50% deduction
SELECT FNAME,
       COMM + (COMM * 15 / 100),
       (SAL * 12) - ((SAL * 12) * 50 / 100)
FROM EMPS;
 
-- Q11. First name, job, annual salary with 10% hike and annual commission with 20% deduction
SELECT FNAME,
       JOB,
       (SAL * 12) + ((SAL * 12) * 10 / 100),
       (COMM * 12) - ((COMM * 12) * 20 / 100)
FROM EMPS;
 
-- ----------------------------------------------------------------
-- ALIASING
-- ----------------------------------------------------------------
 
-- Q12. First name, last name, date of birth with aliases
SELECT FNAME  "FIRST NAME",
       LNAME  "LAST NAME",
       DOB    "DATE OF BIRTH"
FROM EMPS;
 
-- Q13. Annual salary and job with aliases
SELECT SAL * 12  AS "ANNUAL SALARY",
       JOB       AS "DESIGNATION"
FROM EMPS;
 
-- Q14. Commission with 15% hike and annual salary with 50% deduction (aliased)
SELECT FNAME,
       COMM + (COMM * 15 / 100)              AS "COMMISSION WITH 15% HIKE",
       SAL * 12 - ((SAL * 12) * 50 / 100)   AS "ANNUAL SALARY WITH 50% DEDUCTION"
FROM EMPS;
 
