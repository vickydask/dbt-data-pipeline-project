# dbt Data Pipeline Project

## Overview
This project demonstrates a simple end-to-end data pipeline built with dbt, DuckDB, SQL, Python, and Git.

The pipeline loads raw CSV data, transforms it into staging models, builds a business-ready mart table, and validates data quality through dbt tests. A Python script is also included to orchestrate the pipeline steps automatically.

## Tech Stack
- dbt
- DuckDB
- SQL
- Python
- Git / GitHub

## Project Structure
- **seeds/**: raw input data in CSV format
- **models/staging/**: staging transformations and data standardization
- **models/marts/**: analytics-ready aggregated model
- **run_pipeline.py**: Python script to orchestrate dbt seed, run, and test
- **schema.yml**: dbt tests and model documentation

## Pipeline Flow
Raw CSV data is loaded into DuckDB using `dbt seed`.

Then the following steps are executed:

1. `stg_orders`
2. `stg_customers`
3. `mart_revenue_per_customer`
4. dbt tests

## Transformations Implemented
### Staging
- type casting
- null filtering
- derived feature creation (`order_value_category`)

### Mart
- total orders per customer
- total revenue per customer
- average order value
- count of high-value orders

## Data Quality Checks
The project includes dbt tests such as:
- `not_null`
- `unique`

These are applied to key columns like:
- `order_id`
- `customer_id`
- `customer_name`
- `amount`

## How to Run

### Option 1: Run dbt manually
dbt seed  
dbt run  
dbt test  

### Option 2: Run the pipeline with Python
python run_pipeline.py

## Why This Project
This project was built to practice modern data workflow concepts, including:
- modular SQL transformations with dbt
- basic orchestration with Python
- data testing
- version control with Git and GitHub

It reflects how analytics and data engineering workflows are structured in production environments.
