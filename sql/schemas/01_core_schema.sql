-- ============================================================
-- SKILLHUB DATABASE - Core Schema
-- Author  : [Your Name]
-- Created : 2025
-- Description : Student, Branch, Product, Faculty tables
-- ============================================================
 
CREATE DATABASE IF NOT EXISTS SKILLHUB;
USE SKILLHUB;
 
-- ----------------------------------------------------------------
-- STUDENT
-- ----------------------------------------------------------------
CREATE TABLE STUDENT (
    AGE   INT          NULL,
    SID   INT UNSIGNED NOT NULL,
    SNAME VARCHAR(20)  NOT NULL,
    PHONE BIGINT UNSIGNED NOT NULL,
    CONSTRAINT P_SID PRIMARY KEY (SID),
    CONSTRAINT U_PH   UNIQUE (PHONE),
    CONSTRAINT S_PH   CHECK  (LENGTH(PHONE) = 10)
);
 
-- ----------------------------------------------------------------
-- BRANCH
-- ----------------------------------------------------------------
CREATE TABLE BRANCH (
    BID     INT UNSIGNED NOT NULL,
    BNAME   VARCHAR(20)  NOT NULL,
    ADDRESS VARCHAR(30)  NOT NULL,
    PINCODE INT          NOT NULL,
    CONSTRAINT P_BID  PRIMARY KEY (BID),
    CONSTRAINT U_PIN  UNIQUE (PINCODE),
    CONSTRAINT C_PIN  CHECK  (LENGTH(PINCODE) = 6)
);
 
-- ----------------------------------------------------------------
-- PRODUCT
-- ----------------------------------------------------------------
CREATE TABLE PRODUCT (
    PID      INT          NOT NULL AUTO_INCREMENT,
    PNAME    VARCHAR(10)  NOT NULL,
    PRICE    DECIMAL(5,2) NOT NULL,
    QUANTITY INT          NOT NULL DEFAULT 100,
    CONSTRAINT P_PID      PRIMARY KEY (PID),
    CONSTRAINT C_PRICE    CHECK (PRICE > 0),
    CONSTRAINT C_QUANTITY CHECK (QUANTITY > 0)
);
 
-- ----------------------------------------------------------------
-- FACULTY
-- ----------------------------------------------------------------
CREATE TABLE FACULTY (
    FID   INT UNSIGNED   NOT NULL PRIMARY KEY,
    FNAME VARCHAR(20)    NOT NULL,
    PHONE BIGINT UNSIGNED NOT NULL UNIQUE,
    CHECK (LENGTH(PHONE) = 10)
);
