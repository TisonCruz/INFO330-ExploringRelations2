-- Show the sales agent's full name and invoices associated with each sales agent.

SELECT employees.FirstName, employees.LastName, employees.Title, invoices.InvoiceId, invoices. CustomerId, invoices.InvoiceDate, invoices.BillingAddress
FROM employees, invoices, customers
WHERE EmployeeId in (3, 4, 5)
AND SupportRepId in (3, 4, 5)
AND invoices.CustomerId = customers.CustomerId;
