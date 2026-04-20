-- ============================================================
-- SKILLHUB DATABASE - Sample Queries
-- ============================================================
 
USE SKILLHUB;
 
-- ----------------------------------------------------------------
-- CORE MODULE QUERIES
-- ----------------------------------------------------------------
 
-- View all students
SELECT * FROM STUDENT;
 
-- View all products
SELECT * FROM PRODUCT;
 
-- Products priced above 50
SELECT * FROM PRODUCT WHERE PRICE > 50;
 
-- ----------------------------------------------------------------
-- TRAVEL MODULE QUERIES
-- ----------------------------------------------------------------
 
-- All confirmed bookings
SELECT * FROM BOOKINGS WHERE STATUS = 'CONFIRMED';
 
-- Customers with their bookings
SELECT C.CNAME, B.BOOKING_DATE, B.STATUS
FROM CUSTOMER C
JOIN BOOKINGS B ON C.CUSTOMER_ID = B.CUSTOMER_ID;
 
-- Destinations and their packages
SELECT D.DESTINATION_NAME, P.PACKAGE_NAME, P.PRICE, P.DURATION_DAYS
FROM DESTINATION D
JOIN PACKAGES P ON D.DESTINATION_ID = P.DESTINATION_ID;
 
-- ----------------------------------------------------------------
-- HOSPITAL MODULE QUERIES
-- ----------------------------------------------------------------
 
-- All scheduled appointments
SELECT * FROM APPOINTMENTS WHERE STATUS = 'SCHEDULED';
 
-- Appointments with doctor and patient names
SELECT A.APP_ID, D.DOC_NAME, P.PAT_NAME, A.APP_DATE, A.STATUS
FROM APPOINTMENTS A
JOIN DOCTORS D ON A.DOC_ID = D.DOC_ID
JOIN PATIENTS P ON A.PAT_ID = P.PAT_ID;
 
-- Unpaid bills
SELECT B.BILL_ID, P.PAT_NAME, B.AMOUNT
FROM BILLS B
JOIN PATIENTS P ON B.PAT_ID = P.PAT_ID
WHERE B.PAYMENT_STATUS = 'UNPAID';
 
-- Active medications (where end date is in the future)
SELECT M.MED_ID, P.PAT_NAME, D.DOC_NAME, M.MEDICINE_NAME, M.DOSAGE
FROM MEDICATIONS M
JOIN PATIENTS P ON M.PAT_ID = P.PAT_ID
JOIN DOCTORS  D ON M.DOC_ID = D.DOC_ID
WHERE M.END_DATE >= CURDATE();
 
-- ----------------------------------------------------------------
-- META QUERIES
-- ----------------------------------------------------------------
 
-- List all tables in the database
SHOW TABLES;
 
-- Check table structure
DESCRIBE STUDENT;
DESCRIBE BOOKINGS;
DESCRIBE APPOINTMENTS;
 
