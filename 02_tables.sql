CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(50),
    address VARCHAR(150)
);

CREATE TABLE Branch (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(100),
    manager_name VARCHAR(50)
);

CREATE TABLE Delivery_Agent (
    agent_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Shipment (
    shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    agent_id INT,
    weight DECIMAL(6,2),
    cost DECIMAL(8,2),
    status VARCHAR(50),
    booking_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (receiver_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (agent_id) REFERENCES Delivery_Agent(agent_id)
);

CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    shipment_id INT,
    amount DECIMAL(8,2),
    payment_mode VARCHAR(20),
    payment_status VARCHAR(20),
    FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
);

CREATE TABLE Tracking (
    tracking_id INT AUTO_INCREMENT PRIMARY KEY,
    shipment_id INT,
    location VARCHAR(100),
    status VARCHAR(50),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
);
