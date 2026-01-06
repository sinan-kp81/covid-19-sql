# 🦠 COVID-19 Data Analysis Using SQL

## 📌 Project Overview
This project performs an in-depth **COVID-19 data analysis using SQL**, focusing on extracting insights from real-world pandemic data.

The analysis demonstrates practical usage of **arithmetic operators, special and logical operators, IN / NOT IN conditions, IS NULL handling, aggregate functions, and CASE statements**, making this project ideal for **SQL portfolio and interview preparation**.

---

## 🎯 Objectives
- Analyze COVID-19 cases and deaths across countries
- Calculate death and infection percentages
- Identify high-risk and low-risk regions
- Handle missing or null values effectively
- Classify data using conditional logic

---

## 🛠️ Tools & Technologies
- **SQL** (MySQL / PostgreSQL / SQL Server)
- **GitHub** for version control and documentation

---

## 📂 Dataset
- Public COVID-19 dataset containing:
  - Country / Location
  - Date
  - Total Cases
  - New Cases
  - Total Deaths
  - Population
  - Vaccination Data

---

## 🧪 SQL Concepts Used

### 🔢 Arithmetic Operators
- Calculating death rates and infection percentages
- Example:
  - `(total_deaths / total_cases) * 100`

### 🔣 Special Operators
- `BETWEEN`
- `LIKE`
- `IS NULL`

### 🔁 Logical Operators
- `AND`, `OR`, `NOT`

### 📌 IN & NOT IN
- Filtering specific countries or regions

### ❓ IS NULL
- Identifying missing values
- Data quality checks

### 📊 Aggregate Functions
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
- `COUNT()`

### 🔀 CASE Statement
- Categorizing countries based on risk levels
- Example:
```sql
CASE
  WHEN death_percentage > 5 THEN 'High Risk'
  WHEN death_percentage BETWEEN 2 AND 5 THEN 'Medium Risk'
  ELSE 'Low Risk'
END
---
