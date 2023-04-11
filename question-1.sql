-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry, Country
FROM customers, invoices
WHERE Country = 'Brazil';
