# Week 5 – Payment Transaction Management System

## Project Overview
The Payment Transaction Management System is part of the E-Commerce Order Management System. It is developed using SQL to store and manage customer payment details. The system records payment transactions, tracks payment status, manages successful and failed payments, and generates payment analysis reports.

## Objectives
- Create a Payment table connected to the Orders table.
- Store different payment methods.
- Track successful, failed, and pending transactions.
- Update payment status after transaction processing.
- Retrieve payment details for specific orders.
- Generate payment and revenue analysis reports.
- Display customer payment history.

## Technologies Used
- Database: MySQL
- Language: SQL
- Tool: MySQL Workbench

## Database Design

**Table Name:** Payment

| Column | Description |
|---|---|
| Payment_ID | Unique payment identifier |
| Order_ID | Reference to the Orders table |
| Payment_Date | Date of transaction |
| Payment_Mode | Payment method |
| Payment_Status | Transaction status |
| Transaction_Amount | Amount paid |

## Relationship
**Orders (1) — (1) Payment**

- Each order can have one payment transaction.
- Each payment belongs to one order.
- Payment_ID is the Primary Key.
- Order_ID is the Foreign Key.
- UNIQUE constraint is applied to Order_ID.

## Payment Modes
- UPI
- Credit Card
- Debit Card
- Net Banking
- Cash on Delivery

## Payment Status
- Success
- Failed
- Pending

## SQL Operations Performed

1. Created the Payment table with appropriate constraints.
2. Inserted payment records for different orders.
3. Retrieved payment details for specific orders.
4. Displayed successful payment transactions.
5. Identified failed and pending transactions.
6. Counted successful and failed payments.
7. Updated failed payment status after retry.
8. Analyzed payment methods used by customers.
9. Calculated total revenue and average transaction amount.
10. Generated customer payment history reports.

## Reports Generated

### 1. Payment Mode Analysis
- Number of UPI transactions.
- Number of card payments.
- Most preferred payment method.

### 2. Revenue Analysis
- Total successful revenue.
- Revenue by payment method.
- Average transaction amount.

### 3. Customer Payment History
- Customer Name
- Order ID
- Payment Mode
- Transaction Amount
- Payment Status

## Key SQL Concepts Used
- CREATE TABLE
- INSERT INTO
- SELECT
- UPDATE
- DROP TABLE
- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- NOT NULL
- CHECK
- GROUP BY
- ORDER BY
- COUNT()
- SUM()
- AVG()
- JOIN

## Conclusion
The Payment Transaction Management System helps manage customer payment transactions efficiently. It maintains payment details, tracks transaction statuses, and generates useful business reports. This project improves understanding of SQL queries, database relationships, constraints, and data analysis.
