-- ============================================================
-- SKILLHUB DATABASE - Travel Module Schema
-- Tables : CUSTOMER, DESTINATION, PACKAGES, BOOKINGS
-- ============================================================
 
USE SKILLHUB;
 
-- ----------------------------------------------------------------
-- DESTINATION
-- ----------------------------------------------------------------
CREATE TABLE DESTINATION (
    DESTINATION_ID   INT           NOT NULL PRIMARY KEY,
    DESTINATION_NAME VARCHAR(100),
    STATE            VARCHAR(50),
    AVERAGE_COST     DECIMAL(10,2)
);
 
-- ----------------------------------------------------------------
-- CUSTOMER
-- ----------------------------------------------------------------
CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT UNSIGNED  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CNAME       VARCHAR(30)   NOT NULL,
    ADDRESS     VARCHAR(100)  NOT NULL,
    PHONE       BIGINT UNSIGNED NOT NULL UNIQUE,
    EMAIL       VARCHAR(40),
    BALANCE     DECIMAL(5,3)  UNSIGNED NOT NULL DEFAULT 10,
    GENDER      ENUM('MALE','FEMALE') NOT NULL,
    SID         INT UNSIGNED,
    CONSTRAINT FK_SID FOREIGN KEY (SID) REFERENCES STUDENT(SID),
    CHECK (LENGTH(PHONE) = 10)
);
 
-- ----------------------------------------------------------------
-- PACKAGES
-- ----------------------------------------------------------------
CREATE TABLE PACKAGES (
    PACKAGE_ID     INT           NOT NULL PRIMARY KEY,
    DESTINATION_ID INT,
    PACKAGE_NAME   VARCHAR(100),
    DURATION_DAYS  INT,
    PRICE          DECIMAL(10,2),
    CONSTRAINT FK_DEST FOREIGN KEY (DESTINATION_ID)
        REFERENCES DESTINATION(DESTINATION_ID)
);
 
-- ----------------------------------------------------------------
-- BOOKINGS
-- ----------------------------------------------------------------
CREATE TABLE BOOKINGS (
    BOOKING_ID     INT  NOT NULL PRIMARY KEY,
    CUSTOMER_ID    INT  NOT NULL,
    DESTINATION_ID INT,
    PACKAGE_ID     INT,
    BOOKING_DATE   DATE,
    STATUS         ENUM('CONFIRMED','CANCELLED','PENDING'),
    CONSTRAINT FK_CUST      FOREIGN KEY (CUSTOMER_ID)
        REFERENCES CUSTOMER(CUSTOMER_ID),
    CONSTRAINT FK_DEST_BOOK FOREIGN KEY (DESTINATION_ID)
        REFERENCES DESTINATION(DESTINATION_ID)
);
 
