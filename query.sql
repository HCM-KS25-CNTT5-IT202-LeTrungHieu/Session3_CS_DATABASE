SELECT FullName, Email
FROM CUSTOMERS
WHERE City = 'Hà Nội'
AND LastPurchaseDate < '2025-10-01'
AND Email IS NOT NULL
AND Status != 'Locked';
