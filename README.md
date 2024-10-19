# Rental Management System
This system is designed to help property owners manage rental properties and tenants efficiently. It includes features for tracking property listings, tenant applications, lease agreements, payments, maintenance requests and tenant referrals. The Tenant Referral Program adds a layer of community engagement by allowing current tenants to refer friends or colleagues. If the referral leads to a lease, the referring tenant earns rewards, such as rent discounts or cash incentives. This feature encourages tenants to spread the word, improving property occupancy rates for property owners.

<br>
You can find more information about this system in the document titled "
Home Rental Management System"

## Instructions on how to execute the SQL Queries
1. Ensure SQLite is installed in your laptop. If it's a Mac
simply run the following command in the terminal to initialize:
```
sqlite3
```
It should open up the SQLite prompt, otherwise go to this link to download SQLite (Ensure Compatibility)
<a href="https://www.sqlite.org/download.html">SQLite Download</a>

2. The SQLite queries can either be executed in the terminal SQLite command line, or you can install a software called DB Browser which useful for doing DDL or DML tasks.
<a href="https://sqlitebrowser.org/dl/">Download DB Browser</a>

3. The dataset we will be using for these tasks, is the Rental Database, which is available in this repository, just download the file named ``` RentalDB```

4. Now, we need to navigate into the database there are two options
-   Option 1: Navigate to the directory where the RentalDB database is present, and initialize from the command-line:
```
sqlite3 RentalDB.db
```
- Option 2: Open the database, by using DB Browser. Click on Open Database and choose the RentalDB database folder. It will show all the tables and data present in it. (This makes it easier to view the tables -- Personal Preference)

5. Executing Queries: 
- Option 1: Executing from command line: Make sure the SQLite command-line prompt is initialized in the Media database folder, then you can simple copy paste the code from Query.sql files onto the command-line and execute them.
- Option 2: In DB Browser, navigate to the EXECUTE SQL component, then copy paste the queries, then click on run. This should execute the queries and show you the proper output! (Preferred***).
- Option 3: Open and execute the sql file along with RentalDB database, make sure to navigate to the folder where the RentalDB.db file is present, use the following SQLite command:
```
sqlite3 RentalDB.db < query1.sql
```
Similarly, you can execute the code for the other queries.

## Queries

- Query 1: Which properties are tenants currently renting, and what are the details of their lease agreements? 
<br>
This query retrieves all tenants, the properties they are renting, and the associated lease agreement details such as the start date, end date, and rent amount. It uses a join between the Tenant, LeaseAgreement, and Property tables.
<br>

- Query 2: Which tenants have submitted applications for properties but have not yet signed a lease?
<br>
This query finds tenants who have submitted applications but whose application status is still pending. It uses a subquery to identify these tenants by matching their IDs in the Application table with the Tenant table.
<br>

- Query 3: Which property owners have more than 3 properties, and how many properties do they own?
<br>
This query counts the number of properties owned by each property owner and filters out property owners who own fewer than 3 properties using the HAVING clause. It provides insights into which owners have larger property portfolios.
<br>

- Query 4: Which tenants are renting a house in Springfield or Metropolis, have completed a maintenance request, and are paying more than $2,000 in rent?
<br>
This query finds tenants who are renting houses in specific cities, have submitted at least one completed maintenance request, and are paying more than $2,000 in rent. It uses a complex search criterion involving multiple conditions with logical connectors.
<br>

- Query 5: How much has each tenant paid in total, and how are they categorized as a "High Payer" or "Low Payer"?
<br>
This query calculates the total payments made by each tenant, assigns them a category based on their total payment, and ranks them in descending order of total payments. It uses PARTITION BY and CASE/WHEN to achieve this.
<br>

## Overview of Database Queries

- Join of Three Tables: Query 1 demonstrates joining the Tenant, LeaseAgreement, and Property tables to get a complete view of tenant leases.
- Subquery: Query 2 uses a subquery to find tenants with pending applications.
- Group By with HAVING Clause: Query 3 groups property owners and filters based on ownership of 3 or more properties.
- Complex Search Criteria: Query 4 uses multiple logical conditions to find tenants in specific cities, renting houses, and paying high rent.
- Advanced Query with PARTITION BY and CASE/WHEN: Query 5 uses advanced SQL features to rank tenants based on their payments and categorize them into High Payers or Low Payers.