-- What was the most purchased track of 2013?

select tracks.name as 'Most Purchased Track', max(tracks.TrackId) as 'Number of Tracks Bought', invoices.InvoiceDate as 'Year'
from tracks, invoices, invoice_items
where tracks.TrackId = invoice_items.TrackId
and invoices.InvoiceId = invoice_items.InvoiceId
and invoices.InvoiceDate like '2013%'
order by max(tracks.TrackID)
limit 1;
