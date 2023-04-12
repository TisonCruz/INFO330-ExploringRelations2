-- Which sales agent made the most in sales in 2010?

select employees.FirstName, employees.LastName, Invoices.InvoiceDate, max(invoices.Total) as 'Total Sales'
from employees, customers, invoices
where employees.EmployeeId = customers.SupportRepId
and invoices.CustomerId = customers.CustomerId
and employees.Title = 'Sales Support Agent'
and invoices.InvoiceDate like '2010%'
order by max(invoices.total)
limit 1;
