# 🛍️ Retail Performance Dashboard

**Analysis and optimization of retail KPIs**

------------------------------------------------------------------------

##  Overview

This project focuses on analyzing and optimizing the performance of a
retail store.\
We integrate multiple datasets, clean and analyze them, and build an
**interactive Power BI dashboard** to monitor key KPIs like: - Total
Revenue - Conversion Rate - Average Basket Size - Store Traffic -
Product Sales - Staff Performance

Additionally, we used **Python** to perform numerical analysis and a
simple **forecast** for future sales.

------------------------------------------------------------------------

##  Project Structure

**Retail_Performance_Dashboard/** - **1_Data/** - products.csv\
- staff.csv\
- sales.csv\
- customers_clean.csv\
- stock_levels.csv\
- store_traffic.csv\
- Nespresso retail dataset.xlsx - **2_SQL/** - Nespresso_retail.sql\
- README.md - **3_Python/** - Nespresso_retail.ipynb\
- README.md - **4_PowerBI/** - capstonepowerbi.pbix\
- README.md - **5_Documentation/** - Final_Project_Report.pdf\
- README.md - **A_README.md** → **You are here**

------------------------------------------------------------------------

##  Technologies Used

-   **Excel** → Initial data cleaning and KPI calculation\
-   **MySQL** → Storing and querying structured data\
-   **Python + NumPy/Pandas** → KPI computation and basic forecasting\
-   **Power BI** → Interactive dashboard visualization\
-   **GitHub** → Version control and project sharing

------------------------------------------------------------------------

## How to Use This Project

### 1 Explore the Dashboard

-   Open the file:\
    `4_PowerBI/capstonepowerbi.pbix`
-   Requires **Power BI Desktop** installed.\
-   Interact with:
    -   KPI cards
    -   Filters & slicers (date, category, staff)
    -   Top products & staff ranking
    -   Detailed data tables

------------------------------------------------------------------------

### 2 Work with the Datasets

-   All source and cleaned datasets are under:\
    `1_Data/`
-   Formats: **CSV** and **XLSX**.

------------------------------------------------------------------------

### 3 SQL Database Setup

-   Use the script:\
    `2_SQL/Nespresso_retail.sql`
-   Creates tables and loads data for SQL analysis.\
-   Test queries to extract KPIs and cross-analyze traffic, staff, and
    revenue.

------------------------------------------------------------------------

### 4 Python Analysis & Forecast

-   Open:\
    `3_Python/Nespresso_retail.ipynb`

-   Includes:

    -   KPI calculation
    -   Monthly aggregation
    -   **One-month ahead sales forecasting**\

-   Requires:

    ``` bash
    pip install pandas numpy matplotlib seaborn
    ```

------------------------------------------------------------------------

### 5 Read the Project Report

-   Find it in:\
    `5_Documentation/Final_Project_Report.pdf`
-   Summarizes:
    -   Project goals
    -   KPI analysis
    -   Dashboard insights
    -   Forecasting results

------------------------------------------------------------------------

## Contact

For any questions or suggestions, feel free to connect via GitHub or
email.

------------------------------------------------------------------------

*This repository demonstrates a complete retail performance analysis,
from data integration to forecasting and visualization.*
