-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

select tracks.name as 'Track Name', artists.name as 'Artist Name', invoice_items.InvoiceLineId,
invoice_items.InvoiceId, invoice_items.TrackId, invoice_items.UnitPrice, invoice_items.Quantity
from tracks, albums, artists, invoice_items
where invoice_items.TrackId = tracks.TrackId
and albums.AlbumId = tracks.AlbumId
and albums.ArtistId = artists.ArtistId;
