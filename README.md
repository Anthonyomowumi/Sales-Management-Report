# Sales-Management-Report
Data Analyst Portfolio Project – Sales Management Report


<img width="591" alt="SALES OVERVIEW DASHBOARD 1" src="https://github.com/user-attachments/assets/5fb31a9d-6216-438c-85ac-18edd121c07c" />

<img width="784" alt="DATA MODEL FOR GITHUB PORTFOLIO PROJECT 1" src="https://github.com/user-attachments/assets/46e52cad-8d8f-4afd-86c6-0488e6413af6" />

<img width="952" alt="CUSTOMER QUERY FOR GITHUB PORTFOLIO" src="https://github.com/user-attachments/assets/c0cfde83-2ea2-4851-8dc5-c44ca2e30164" />

<img width="475" alt="EXCEL SCREENSHOT FOR PORTFOLIO PROJECT 1" src="https://github.com/user-attachments/assets/d781f86c-c691-48eb-9116-96e94f398cb3" />

## Business Request and User Stories
An executive sales report for sales managers was the business request for this data analyst project. The following user stories were created in response to the business's requirement in order to complete delivery and guarantee that acceptance criteria were upheld throughout the project.
<img width="518" alt="userstory table format" src="https://github.com/user-attachments/assets/0a1f38d7-7e70-4be5-8b9b-a1eafe9e0b70" />

## Data Cleansing & Transformation (SQL)
The next step was preparing my dataset for PowerBI use. I am using the Update Adventures Works 2019 till 2025 dataset from Microsoft Online. It is secondary data. The Adventure Works data warehouse is already prepared and ready for Analysis.

Data Warehouse is mostly used for Analytics, it is an OLAP system. The dataset contains Facts and Dim tables. Facts tables the quantitative tables where all the numbers added together for example salary, amount, payment, etc are stored and Dim tables give more information about that,  Sales by product type, the Sales is the Fact in there and the Product is dim in which the Sales will be slices and dices….fact tables mostly contain the foreign keys of dim tables as related to it, this is always a STAR SCHEMA DATA MODEL   After these, I look at the dataset that I will be needing and get them prepared and ready for use in PowerBI. 

•	I identified the tables needed from the Email request: Sales/Internet Sales—Fact Table, Products—Dim Tables, Clients/Customers—Dim Tables, Date/Time—Dim Table, and Budget (Separate table in Excel for comparisons). 
•	After that, I looked at the tables to determine which columns were needed for my analysis, creating, for example, a customer table with the needed columns. Then, I wrote my SQL queries for data cleansing and transformation and saved the Results in CSV.

Below are the SQL statements for cleansing and transforming necessary data.

DIM_CUSTOMER
<img width="800" alt="customer dim" src="https://github.com/user-attachments/assets/fdcdd024-6f8e-45c2-9931-1c1a7fa0a997" />

DIM_CALENDAR
<img width="844" alt="data dim" src="https://github.com/user-attachments/assets/8d4a967b-6636-4aa8-94bb-e21e9b11d297" />

DIM_PRODUCT
<img width="632" alt="product dim" src="https://github.com/user-attachments/assets/a7303b0d-d6af-479e-9437-4d19685124a9" />

FACT_SALES
<img width="683" alt="Internetsales fact" src="https://github.com/user-attachments/assets/f65ea5c4-9eed-41ff-b8b6-5fc629f6bf0b" />


## Data Model
Below is a screenshot of the data model after cleansed and prepared tables were read into Power BI.

<img width="784" alt="DATA MODEL FOR GITHUB PORTFOLIO PROJECT 1" src="https://github.com/user-attachments/assets/b2916834-594d-4afb-b224-fbdc9d2d1672" />












