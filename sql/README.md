# CHOMBU Database
 
A multi-module SQL project built with **MySQL**, covering core student management, a travel booking system, and a hospital management system.
 
---
 
## Database Modules
 
### 1. Core Module
Foundational tables for students, branches, products, and faculty.
 
| Table | Description |
|-------|-------------|
| `STUDENT` | Student records with phone validation |
| `BRANCH` | Branch locations with pincode validation |
| `PRODUCT` | Products with price and quantity constraints |
| `FACULTY` | Faculty details |
 
### 2. Travel Module
Handles destinations, packages, customers, and bookings.
 
| Table | Description |
|-------|-------------|
| `DESTINATION` | Travel destinations with average cost |
| `CUSTOMER` | Customer profiles linked to students |
| `PACKAGES` | Travel packages per destination |
| `BOOKINGS` | Customer bookings with status tracking |
 
### 3. Hospital Module
Manages doctors, patients, appointments, billing, and medications.
 
| Table | Description |
|-------|-------------|
| `DOCTORS` | Doctor profiles and specializations |
| `PATIENTS` | Patient records with DOB and gender |
| `APPOINTMENTS` | Scheduled appointments with status |
| `BILLS` | Billing records per appointment |
| `MEDICATIONS` | Prescribed medications with dosage and dates |
 
---
 
## Project Structure
 
```
chombu-sql/
├── schemas/
│   ├── 01_core_schema.sql       # Student, Branch, Product, Faculty
│   ├── 02_travel_schema.sql     # Customer, Destination, Packages, Bookings
│   └── 03_hospital_schema.sql   # Doctors, Patients, Appointments, Bills, Medications
├── queries/
│   └── sample_queries.sql       # Useful SELECT queries for testing
└── README.md
```
 
---
 
## Setup Instructions
 
### Prerequisites
- MySQL 8.0+
- MySQL Workbench or any SQL client
### Run the scripts in order
 
```bash
mysql -u root -p < schemas/01_core_schema.sql
mysql -u root -p < schemas/02_travel_schema.sql
mysql -u root -p < schemas/03_hospital_schema.sql
```
 
Or run inside MySQL Workbench by opening each file and executing.
 
---
 
## Key Design Decisions
 
- **Phone validation** — `CHECK (LENGTH(PHONE) = 10)` enforces 10-digit numbers across all tables
- **Pincode validation** — `CHECK (LENGTH(PINCODE) = 6)` on the `BRANCH` table
- **Enums** for status fields — `CONFIRMED/CANCELLED/PENDING`, `PAID/UNPAID`, etc.
- **Foreign keys** — Referential integrity across all related tables
- **AUTO_INCREMENT** — Used on `PRODUCT.PID` and `CUSTOMER.CUSTOMER_ID`
---
 
## Technologies Used
 
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-orange)
 
