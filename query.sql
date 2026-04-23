SELECT Name, Email
FROM CUSTOMERS
WHERE Address LIKE '%Hà Nội%'
AND LastPurchaseDate < '2026-04-01'
AND Email IS NOT NULL
AND Status != 'Locked';
