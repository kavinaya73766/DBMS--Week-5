SELECT Payment_Mode, COUNT(*) AS Total_Transactions FROM Payment
GROUP BY Payment_Mode;

SELECT COUNT(*) AS UPI_Payments FROM Payment
WHERE Payment_Mode = 'UPI';

SELECT COUNT(*) AS Card_Payments FROM Payment
WHERE Payment_Mode IN ('Credit Card', 'Debit Card');

SELECT Payment_Mode, COUNT(*) AS Total_Transactions FROM Payment
GROUP BY Payment_Mode
ORDER BY Total_Transactions DESC
LIMIT 1;

SELECT SUM(Transaction_Amount) AS Total_Revenue FROM Payment
WHERE Payment_Status = 'Success';

SELECT Payment_Mode, SUM(Transaction_Amount) AS Total_Revenue FROM Payment
WHERE Payment_Status = 'Success'
GROUP BY Payment_Mode;

SELECT AVG(Transaction_Amount) AS Average_Transaction_Amount FROM Payment
WHERE Payment_Status = 'Success';

SELECT
    C.Customer_Name,
    O.Order_ID,
    P.Payment_Mode,
    P.Transaction_Amount,
    P.Payment_Status
FROM Customer C
JOIN Orders O
    ON C.Customer_ID = O.Customer_ID
JOIN Payment P
    ON O.Order_ID = P.Order_ID;