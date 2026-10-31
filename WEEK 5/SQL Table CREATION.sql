USE ECommerceDB;

DROP TABLE IF EXISTS Payment;
CREATE TABLE Payment (
    Payment_ID VARCHAR(10) PRIMARY KEY,
    Order_ID INT UNIQUE,
    Payment_Date DATE,
    Payment_Mode VARCHAR(30) NOT NULL,
    Payment_Status VARCHAR(20) NOT NULL,
    Transaction_Amount DECIMAL(10,2),
    FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID),
    CHECK (Transaction_Amount > 0),
    CHECK (Payment_Mode IN (
        'UPI', 'Credit Card', 'Debit Card',
        'Net Banking', 'Cash on Delivery'
    )),

    CHECK (Payment_Status IN (
        'Success', 'Failed', 'Pending'
    ))
);