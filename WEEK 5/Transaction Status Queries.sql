SELECT *FROM Payment
WHERE Payment_Status = 'Success';

SELECT *FROM Payment
WHERE Payment_Status = 'Failed';

SELECT COUNT(*) AS Successful_Payments FROM Payment
WHERE Payment_Status = 'Success';

SELECT COUNT(*) AS Failed_Payments FROM Payment
WHERE Payment_Status = 'Failed';

UPDATE Payment
SET Payment_Status = 'Success'
WHERE Payment_ID = 'P102'
  AND Payment_Status = 'Failed';
  
SELECT *FROM Payment
WHERE Payment_Status = 'Pending';

SELECT *FROM Payment
WHERE Order_ID = 1;

SELECT * FROM Payment;