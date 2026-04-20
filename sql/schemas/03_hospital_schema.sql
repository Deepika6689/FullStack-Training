-- ============================================================
-- SKILLHUB DATABASE - Hospital Module Schema
-- Tables : DOCTORS, PATIENTS, APPOINTMENTS, BILLS, MEDICATIONS
-- ============================================================
 
USE SKILLHUB;
 
-- ----------------------------------------------------------------
-- DOCTORS
-- ----------------------------------------------------------------
CREATE TABLE DOCTORS (
    DOC_ID         INT         NOT NULL PRIMARY KEY,
    DOC_NAME       VARCHAR(50),
    SPECIALIZATION VARCHAR(50)
);
 
-- ----------------------------------------------------------------
-- PATIENTS
-- ----------------------------------------------------------------
CREATE TABLE PATIENTS (
    PAT_ID   INT         NOT NULL PRIMARY KEY,
    PAT_NAME VARCHAR(50),
    DOB      DATE,
    GENDER   CHAR(1)
);
 
-- ----------------------------------------------------------------
-- APPOINTMENTS
-- ----------------------------------------------------------------
CREATE TABLE APPOINTMENTS (
    APP_ID   INT      NOT NULL PRIMARY KEY,
    DOC_ID   INT,
    PAT_ID   INT,
    APP_DATE DATETIME,
    STATUS   ENUM('SCHEDULED','COMPLETED','CANCELLED'),
    FOREIGN KEY (DOC_ID) REFERENCES DOCTORS(DOC_ID),
    FOREIGN KEY (PAT_ID) REFERENCES PATIENTS(PAT_ID)
);
 
-- ----------------------------------------------------------------
-- BILLS
-- ----------------------------------------------------------------
CREATE TABLE BILLS (
    BILL_ID        INT           NOT NULL PRIMARY KEY,
    APP_ID         INT,
    PAT_ID         INT           NOT NULL,
    AMOUNT         DECIMAL(10,2),
    PAYMENT_STATUS ENUM('PAID','UNPAID'),
    FOREIGN KEY (PAT_ID) REFERENCES PATIENTS(PAT_ID)
);
 
-- ----------------------------------------------------------------
-- MEDICATIONS
-- ----------------------------------------------------------------
CREATE TABLE MEDICATIONS (
    MED_ID        INT          NOT NULL PRIMARY KEY,
    PAT_ID        INT,
    DOC_ID        INT,
    MEDICINE_NAME VARCHAR(100),
    DOSAGE        VARCHAR(50),
    START_DATE    DATE,
    END_DATE      DATE,
    FOREIGN KEY (PAT_ID) REFERENCES PATIENTS(PAT_ID),
    FOREIGN KEY (DOC_ID) REFERENCES DOCTORS(DOC_ID)
);
 
