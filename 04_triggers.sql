DELIMITER $$

CREATE TRIGGER track_update
AFTER UPDATE ON Shipment
FOR EACH ROW
BEGIN
    INSERT INTO Tracking(shipment_id, location, status)
    VALUES (NEW.shipment_id, 'Auto Update', NEW.status);
END$$

DELIMITER ;
