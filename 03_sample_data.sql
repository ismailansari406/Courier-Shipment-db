INSERT INTO Customer (name, phone, email, address) VALUES
('Ismail Ansari','9876543210','ismail@gmail.com','Delhi'),
('Rahul Sharma','9123456780','rahul@gmail.com','Mumbai');

INSERT INTO Branch (location, manager_name) VALUES
('Delhi Hub','Mr Singh');

INSERT INTO Delivery_Agent (name, phone, branch_id) VALUES
('Ravi Kumar','9000000001',1);

INSERT INTO Shipment (sender_id, receiver_id, agent_id, weight, cost, status)
VALUES (1,2,1,2.5,250,'Booked');

INSERT INTO Payment (shipment_id, amount, payment_mode, payment_status)
VALUES (1,250,'UPI','Completed');

INSERT INTO Tracking (shipment_id, location, status)
VALUES (1,'Delhi','Booked');
