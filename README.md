# Vehicle Rental System — Database Design & SQL Queries

## 📘 Project Overview
This repository contains the database schema, sample data, and SQL queries for a **Vehicle Rental System**. The goal is to demonstrate sound relational design (PK/FK, cardinality) and practical SQL using `JOIN`, `EXISTS`, `WHERE`, and `GROUP BY/HAVING`.

## ✅ Objectives
- Design a relational schema for Users, Vehicles, and Bookings
- Ensure data integrity with primary and foreign keys
- Enforce uniqueness constraints (e.g., emails, registration numbers)
- Write query solutions aligned with the assignment requirements

## 📁 Project Structure
- **schemas.sql** — Table definitions with keys, constraints, and status fields
- **data.sql** — Sample records for Users, Vehicles, and Bookings
- **queries.sql** — Required SQL queries (JOIN, EXISTS, WHERE, GROUP BY/HAVING)

## 🧱 Database Design (ERD)
The ERD models these relationships:
- **One-to-Many**: Users → Bookings
- **Many-to-One**: Bookings → Vehicles
- **One-to-One (logical)**: Each booking links exactly one user and one vehicle

**ERD Link:** [Link](https://lucid.app/lucidchart/cd60182c-3f4b-42f2-bf7b-0dbe818b9628/edit?invitationId=inv_ccb4ef21-e840-4183-a4ad-7f149acb1dd5)

## 🧩 Business Rules Implemented
**Users**
- Role: Admin or Customer
- Unique email
- Name, password, phone

**Vehicles**
- Type: car / bike / truck
- Unique registration number
- Rental price per day
- Status: available / rented / maintenance

**Bookings**
- Linked to one user and one vehicle
- Start and end dates
- Status: pending / confirmed / completed / cancelled
- Total cost

## 🧪 How to Run
Use any PostgreSQL client (pgAdmin, DBeaver, psql):
1. Run **schemas.sql**
2. Run **data.sql**
3. Run **queries.sql**

## 🧾 Query Requirements
The following queries are included in **queries.sql**:
1. **JOIN** — booking info with customer and vehicle names
2. **NOT EXISTS** — vehicles never booked
3. **WHERE** — available vehicles by type
4. **GROUP BY + HAVING** — vehicles with more than 2 bookings

## 🎤 Viva (Theory Questions)
Prepare short verbal answers for:
1. Foreign key and its importance
2. Difference between WHERE and HAVING
3. Primary key characteristics
4. INNER JOIN vs LEFT JOIN

**Viva Video Link:** [link ](https://drive.google.com/drive/folders/1z1C5a_rVDUkgoOf3_QY-JuPp_JyAt4f5)

## 📤 Submission 
```
GitHub Repo: <https://github.com/wasif23ahad/assignment3_posgresql_PH>
ERD Link: <https://lucid.app/lucidchart/cd60182c-3f4b-42f2-bf7b-0dbe818b9628/edit?invitationId=inv_ccb4ef21-e840-4183-a4ad-7f149acb1dd5>
Viva Video Link: <https://drive.google.com/drive/folders/1z1C5a_rVDUkgoOf3_QY-JuPp_JyAt4f5>
```

## 👤 Author
Mohammad Wasif Ahad