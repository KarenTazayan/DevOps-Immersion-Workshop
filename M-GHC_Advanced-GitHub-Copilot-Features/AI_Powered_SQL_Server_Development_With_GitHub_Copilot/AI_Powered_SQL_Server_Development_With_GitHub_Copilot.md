AI_Powered_SQL_Server_Development_With_GitHub_Copilot

## AI Powered SQL Server Development With GitHub Copilot

## Overview
**Duration:** 20 minutes  
**Goal:** Demonstrate how MSSQL Extension + GitHub Copilot enable high-productivity SQL development, schema design, refactoring, and query optimization.

---

# Workshop Structure

## Introduction (1 min)
Topics covered:
- MSSQL Extension for VS Code
- GitHub Copilot interaction with SQL files
- Real-time completions, schema design, optimization
- Hands-on examples

---

# 1. Setup Tools and Environment (2 min)

### Tools
- Visual Studio Code
- MSSQL extension for Visual Studio Code
- GitHub Copilot Extension
- SQL Server Express LocalDB

### Connect from VS Code
- Ctrl+Shift+P > MS SQL Connection > Load from Connection String
- Add connection string value:
```
Data Source=(LocalDb)\MSSQLLocalDB;Integrated Security=SSPI;
```
- Create a new query file
- Test with:
```sql
SELECT @@VERSION;
```
- Execute (Ctrl+Shift+E)

### Database Setup
- Open and execute AIPoweredWorkshop.sql

# 2. Copilot-Assisted SQL Authoring (5 min)

Copilot suggests table names, joins, filters, etc.

- Open and execute 02_Autocompletion.sql

Generate sample data

- Open and execute 03_GenerateSampleData.sql

Generate complex queries

- Open file 04_GenerateComplexQueries.sql

Promts:
-- Generate a monthly revenue breakdown for the last 12 months
-- Generate a list of customers who have not placed any orders in the last 6 months
