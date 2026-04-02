# dbt Data Pipeline Project

## Overview
This project demonstrates a simple end-to-end data pipeline built using dbt. 
It transforms raw transactional data into analytics-ready tables using a modular approach.

## Tech Stack
- dbt (data transformations)
- DuckDB (local data warehouse)
- SQL (data modeling and transformations)
- Git (version control)

## Project Structure
The pipeline follows a layered architecture:

- **Seeds**: Raw data loaded from CSV files
- **Staging**: Data cleaning, type casting, and feature engineering
- **Marts**: Aggregated, business-ready tables

## Data Pipeline Flow

orders → stg_orders → mart_revenue_per_customer  
customers → stg_customers → mart_revenue_per_customer

## Key Features

- Data cleaning and type standardization
- Derived fields (e.g. order_value_category)
- Aggregations (total revenue, average order value)
- Data quality tests (not null, unique)
- Modular and reusable SQL models

## Example Output

The final table `mart_revenue_per_customer` includes:
- total_orders
- total_revenue
- avg_order_value
- high_value_orders
