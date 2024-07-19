CREATE TABLE Students (
  StudentID int,
  Customer varchar(255),
  Mode varchar(255),
  City varchar(255),
  Payment decimal(10, 2)
);

INSERT INTO Students (StudentID, Customer, Mode, City, Payment)
VALUES
  (1, 'John Doe', 'Online', 'New York', 100.00),
  (2, 'Jane Doe', 'Offline', 'Los Angeles', 200.00),
  (3, 'Bob Smith', 'Online', 'Chicago', 50.00),
  (4, 'Alice Johnson', 'Offline', 'New York', 150.00),
  (5, 'Mike Brown', 'Online', 'Houston', 80.00),
  (6, 'Emily Davis', 'Offline', 'Los Angeles', 120.00),
  (7, 'Tom Harris', 'Online', 'Chicago', 90.00),
  (8, 'Sarah Lee', 'Offline', 'New York', 110.00),
  (9, 'Kevin White', 'Online', 'Houston', 70.00),
  (10, 'Lisa Hall', 'Offline', 'Los Angeles', 130.00);
  
  SELECT Payment, StudentID FROM Students GROUP BY StudentID order by Payment asc;

SELECT Customer, SUM(Payment) AS TotalPayment
FROM Students
GROUP BY Customer;

SELECT Mode, SUM(Payment) AS TotalPayment
FROM Students
GROUP BY Mode;

SELECT City, SUM(Payment) AS TotalPayment
FROM Students
GROUP BY City;