use personaltrainer;

SELECT InvoiceId, Description, Price, Quantity, ServiceDate, Price * Quantity AS line_item_total
FROM Invoicelineitem
WHERE price * quantity BETWEEN 15 AND 25;

