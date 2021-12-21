
-- 1 QUESTION,
SELECT invoices.InvoiceId, customers.CustomerId,  invoices.Total
FROM invoices
INNER JOIN customers
ON invoices.CustomerId = customers.CustomerId
ORDER BY invoices.CustomerId ASC, invoices.total DESC;

--2 QUESTION,
SELECT invoices.InvoiceId, customers.CustomerId,  invoices.Total
FROM invoices
INNER JOIN customers
ON invoices.CustomerId = customers.CustomerId
ORDER BY  invoices.total DESC, invoices.CustomerId ASC;

--3 QUESTION
--  The row results are the same in both question. In the first question, when we ordered the customerId first, it sorted by customerId.
--In the second question, when we ordered the total first, it sorted bt total.

--4 QUESTION
SELECT *
FROM invoices
WHERE total >= 10
LIMIT 10;

-- 5 QUESTION
SELECT *
FROM invoices
WHERE total <10
LIMIT 5;

--6 QUESTION
SELECT *
FROM tracks
WHERE name LIKE 'B%s';

--7 QUESTION
SELECT *
FROM invoices
WHERE BillingCountry IN('Germany' , 'Norway', 'Canada')  AND InvoiceDate  BETWEEN '2010-01-01' AND '2010-12-31'
ORDER BY InvoiceDate DESC;











