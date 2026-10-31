INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Date,
 Payment_Mode, Payment_Status, Transaction_Amount)
VALUES
('P101', 1, '2026-10-31', 'UPI', 'Success', 2500.00),
('P102', 2, '2026-10-31', 'Credit Card', 'Failed', 4500.00),
('P103', 3, '2026-10-31', 'Debit Card', 'Success', 3500.00),
('P104', 4, '2026-10-31', 'Net Banking', 'Pending', 2000.00),
('P105', 5, '2026-10-31', 'Cash on Delivery', 'Success', 1500.00),
('P106', 6, '2026-10-31', 'UPI', 'Failed', 3000.00);

SELECT * FROM Payment;