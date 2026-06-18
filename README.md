## Overview

This project demonstrates an end-to-end Airbnb analytics workflow using AWS S3, Snowflake, dbt, and Git. The pipeline follows the Medallion Architecture (Bronze → Silver → Gold) to transform raw Airbnb data into trusted, analytics-ready datasets.

The objective is to build a scalable, secure, and maintainable data platform that supports business reporting, analytics, and decision-making.

---

## Project Architecture

Source Data → AWS S3 → Snowflake → dbt Models (Bronze → Silver → Gold) → Analytics Ready Dataset

### Technologies Used

- AWS S3
- AWS IAM
- Snowflake
- dbt (Data Build Tool)
- SQL
- Git
- Google Antigravity

---

## Business Problem

Organizations often receive raw operational data that contains:

- Duplicate records
- Missing values
- Inconsistent formatting
- No historical tracking

These issues create unreliable reporting and inaccurate business insights.

This project solves these challenges by implementing a structured analytics engineering workflow using dbt and Snowflake.

---

## Solution

The solution ingests Airbnb datasets into Snowflake through AWS S3 and transforms the data using dbt.

The project implements:

- Layered Medallion Architecture
- Snapshot-based Change Tracking
- Reusable dbt Macros
- Automated Testing

This creates trusted and analytics-ready datasets that can be consumed by BI tools and reporting systems.

---

# Medallion Architecture

## Bronze Layer

The Bronze layer stores raw source data loaded from Snowflake external sources.

Responsibilities:

- Preserve raw data
- Initial ingestion
- Minimal transformations
- Maintain source fidelity

Examples:

- bronze_bookings
- bronze_hosts
- bronze_listings

---

## Silver Layer

The Silver layer cleans and standardizes data.

Responsibilities:

- Remove duplicates
- Standardize formats
- Data cleansing
- Improved data quality

Examples:

- silver_bookings
- silver_hosts
- silver_listings

---

## Gold Layer

The Gold layer contains analytics-ready datasets optimized for reporting and business intelligence.


- One Big Table
- Fact tables
- Dimension tables
- Aggregated reporting datasets
- Analytical Reporting Models

---

## Data Quality & Validation

Data quality is enforced using dbt tests.

Implemented validations include:

### Unique Key Validation

Ensures business identifiers remain unique.

Examples:

- listing_id
- host_id
- booking_id

### Not Null Validation

Prevents critical business fields from containing null values.

### Custom Tests

Additional business rule validations implemented using SQL-based tests.

### Generic Tests

Reusable generic tests were created to improve scalability and maintainability.

---

## Snapshots

dbt Snapshots are implemented to track historical changes in Airbnb entities.

Benefits:

- Historical tracking
- Slowly Changing Dimensions (SCD)

Snapshot examples:

- dim_bookings
- dim_hosts
- dim_listings

---

## Macros

Reusable dbt macros were created to reduce repetitive SQL logic.

Benefits:

- Reusability
- Maintainability
- Standardized transformations
- Faster development

Examples:

- Discount calculations
- Multiplication functions
- Dynamic schema generation
- Reusable business logic

---

## Security

Security was implemented using AWS IAM.

### AWS IAM

Used for:

- Access control
- Secure authentication
- Resource authorization

---

## Version Control

Git and GitHub were used for:

- Source control
- Collaboration
- Project documentation
- Deployment management

---

## Project Structure

```
├── Airbnb_Project/
│   │
│   ├── analyses/
│   │   ├── experimental.sql
│   │   ├── if_else.sql
│   │   └── loop.sql
│   │
│   ├── macros/
│   │   ├── discount.sql
│   │   ├── double_it.sql
│   │   ├── generate_schema_name.sql
│   │   ├── multiply.sql
│   │   └── tag.sql
│   │
│   ├── models/
│   │   │
│   │   ├── bronze/
│   │   │   ├── bronze_bookings.sql
│   │   │   ├── bronze_hosts.sql
│   │   │   ├── bronze_listings.sql
│   │   │   └── properties.yml
│   │   │
│   │   ├── silver/
│   │   │   ├── silver_bookings.sql
│   │   │   ├── silver_hosts.sql
│   │   │   └── silver_listings.sql
│   │   │
│   │   └── gold/
│   │       ├── ephemeral/
│   │       │   ├── ephemeral_bookings.sql
│   │       │   ├── ephemeral_hosts.sql
│   │       │   └── ephemeral_listings.sql
│   │       │
│   │       ├── fact_table.sql
│   │       └── one_big_table.sql
│   │
│   ├── sources/
│   │   └── sources.yml
│   │
│   ├── seeds/
│   │   └── .gitkeep
│   │
│   ├── snapshots/
│   │   ├── dim_bookings.yml
│   │   ├── dim_hosts.yml
│   │   └── dim_listings.yml
│   │
│   ├── tests/
│   │   ├── test_bookings.sql
│   │   ├── test_hosts.sql
│   │   └── test_listings.sql
│   │
│   ├── dbt_project.yml
│   ├── profiles.yml
│   └── README.md
│
├── Screenshots/
│   ├── AWS.png
│   ├── Snowflake-catalog.png
│   └── Models.png
│
├── .gitignore
├── .python-version
├── pyproject.toml
├── main.py
└── README.md
```

---

## Key Features

- End-to-End Analytics Workflow
- AWS S3 Data Lake Storage
- Snowflake Cloud Data Warehouse
- dbt Transformation Framework
- Medallion Architecture
- Automated Data Testing
- Snapshot Management
- Reusable Macros

---

# Screenshots

## AWS Architecture

![AWS Architecture](Screenshots/AWS.png)

---

## dbt Models

![dbt Models](Screenshots/Models.png)

---

## Snowflake Catalog Structure

![Snowflake Catalog](Screenshots/Snowflake-catalog.png)

---

## Learning Outcomes

Through this project, I gained hands-on experience with:

- Analytics
- Data Modeling
- Medallion Architecture
- Snowflake Data Warehousing
- AWS S3 Integration
- IAM Security
- dbt Development
- Data Quality Testing
- Snapshot Management
- Git & GitHub Workflow
- Modular SQL

---

## Author

**Nikhil Singh Mahar**

GitHub: `https://github.com/maharnikhil`

LinkedIn: https://www.linkedin.com/in/nikhilsinghmahar/

Mail: nikhilsinghmahar1234@gmail.com

---

## Project Status

-- Completed --
