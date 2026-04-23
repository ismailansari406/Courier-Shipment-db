SELECT * FROM Shipment WHERE status='Booked';

SELECT c.name, s.shipment_id
FROM Customer c
JOIN Shipment s ON c.customer_id = s.sender_id;

SELECT status, COUNT(*) FROM Shipment GROUP BY status;
