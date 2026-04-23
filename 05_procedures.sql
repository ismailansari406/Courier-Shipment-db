DELIMITER $$

CREATE PROCEDURE AddShipment(
    IN sender INT,
    IN receiver INT,
    IN weight DECIMAL(6,2)
)
BEGIN
    INSERT INTO Shipment(sender_id, receiver_id, weight, cost, status)
    VALUES(sender, receiver, weight, weight*100, 'Booked');
END$$

DELIMITER ;
