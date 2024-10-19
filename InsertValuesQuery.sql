-- Insert data into PropertyOwner
INSERT INTO PropertyOwner (Name, Email, PhoneNumber, Address, TaxID) VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', '123 Main St, Springfield, IL', 'TAX1234'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Ave, Metropolis, NY', 'TAX5678'),
('Michael Johnson', 'michael.johnson@example.com', '555-111-2222', '789 Elm St, Gotham, NY', 'TAX9999'),
('Sarah Brown', 'sarah.brown@example.com', '555-333-4444', '222 Pine St, Springfield, IL', 'TAX8888'),
('David Lee', 'david.lee@example.com', '555-555-6666', '333 Birch Ave, Metropolis, NY', 'TAX7777'),
('Emily Davis', 'emily.davis@example.com', '555-777-8888', '444 Cedar Blvd, Gotham, NY', 'TAX6666'),
('Chris Evans', 'chris.evans@example.com', '555-999-0000', '555 Oak Ave, Springfield, IL', 'TAX5555'),
('Olivia Martin', 'olivia.martin@example.com', '555-111-3333', '666 Willow Dr, Metropolis, NY', 'TAX4444'),
('Daniel Thomas', 'daniel.thomas@example.com', '555-444-5555', '777 Maple St, Gotham, NY', 'TAX3333'),
('Sophia Taylor', 'sophia.taylor@example.com', '555-666-7777', '888 Redwood Blvd, Springfield, IL', 'TAX2222');

-- Insert data into Property
INSERT INTO Property (Address, City, State, ZipCode, PropertyType, NumberOfRooms, RentAmount, propertyowner_ID) VALUES
('101 Park St', 'Springfield', 'IL', '62704', 'Apartment', 2, 1500.00, 1),
('202 Maple Dr', 'Metropolis', 'NY', '10001', 'House', 3, 2500.00, 2),
('303 Oak Blvd', 'Gotham', 'NY', '10002', 'Condo', 4, 3000.00, 3),
('404 Cedar Rd', 'Springfield', 'IL', '62705', 'Apartment', 1, 1200.00, 4),
('505 Birch Ave', 'Metropolis', 'NY', '10003', 'House', 5, 3500.00, 5),
('606 Pine St', 'Gotham', 'NY', '10004', 'Apartment', 2, 2000.00, 6),
('707 Elm Blvd', 'Springfield', 'IL', '62706', 'House', 3, 2700.00, 7),
('808 Willow St', 'Metropolis', 'NY', '10005', 'Condo', 4, 3100.00, 8),
('909 Maple Blvd', 'Gotham', 'NY', '10006', 'Apartment', 1, 1300.00, 9),
('1010 Redwood Ave', 'Springfield', 'IL', '62707', 'House', 4, 2800.00, 10);

-- Insert data into Tenant
INSERT INTO Tenant (Name, Email, PhoneNumber) VALUES
('Alice Johnson', 'alice.johnson@example.com', '555-123-4567'),
('Bob Williams', 'bob.williams@example.com', '555-987-6543'),
('Charlie Brown', 'charlie.brown@example.com', '555-111-9876'),
('Diana Prince', 'diana.prince@example.com', '555-222-8888'),
('Edward Norton', 'edward.norton@example.com', '555-333-9999'),
('Fiona Adams', 'fiona.adams@example.com', '555-444-1234'),
('George Clooney', 'george.clooney@example.com', '555-555-5555'),
('Hannah Miller', 'hannah.miller@example.com', '555-666-7777'),
('Isaac Newton', 'isaac.newton@example.com', '555-777-8888'),
('Jessica Alba', 'jessica.alba@example.com', '555-888-9999');

-- Insert data into Application
INSERT INTO Application (tenant_ID, property_ID, ApplicationDate, ApplicationStatus) VALUES
(1, 1, '2024-01-10', 'Pending'),
(2, 2, '2024-01-15', 'Approved'),
(3, 3, '2024-01-20', 'Rejected'),
(4, 4, '2024-01-25', 'Pending'),
(5, 5, '2024-01-30', 'Approved'),
(6, 6, '2024-02-05', 'Rejected'),
(7, 7, '2024-02-10', 'Pending'),
(8, 8, '2024-02-15', 'Approved'),
(9, 9, '2024-02-20', 'Pending'),
(10, 10, '2024-02-25', 'Rejected');

-- Insert data into LeaseAgreement
INSERT INTO LeaseAgreement (property_ID, tenant_ID, LeaseStartDate, LeaseEndDate, RentAmount, SecurityDepositAmount) VALUES
(1, 2, '2024-02-01', '2025-02-01', 1500.00, 1500.00),
(2, 1, '2024-03-01', '2025-03-01', 2500.00, 2500.00),
(3, 4, '2024-04-01', '2025-04-01', 3000.00, 3000.00),
(4, 5, '2024-05-01', '2025-05-01', 1200.00, 1200.00),
(5, 3, '2024-06-01', '2025-06-01', 3500.00, 3500.00),
(6, 6, '2024-07-01', '2025-07-01', 2000.00, 2000.00),
(7, 7, '2024-08-01', '2025-08-01', 2700.00, 2700.00),
(8, 8, '2024-09-01', '2025-09-01', 3100.00, 3100.00),
(9, 9, '2024-10-01', '2025-10-01', 1300.00, 1300.00),
(10, 10, '2024-11-01', '2025-11-01', 2800.00, 2800.00);

-- Insert data into Payment
INSERT INTO Payment (tenant_ID, lease_ID, PaymentDate, Amount, PaymentStatus) VALUES
(1, 1, '2024-02-01', 1500.00, 'Paid'),
(2, 2, '2024-03-01', 2500.00, 'Paid'),
(3, 3, '2024-04-01', 3000.00, 'Late'),
(4, 4, '2024-05-01', 1200.00, 'Paid'),
(5, 5, '2024-06-01', 3500.00, 'Paid'),
(6, 6, '2024-07-01', 2000.00, 'Late'),
(7, 7, '2024-08-01', 2700.00, 'Paid'),
(8, 8, '2024-09-01', 3100.00, 'Paid'),
(9, 9, '2024-10-01', 1300.00, 'Late'),
(10, 10, '2024-11-01', 2800.00, 'Paid');

-- Insert data into MaintenanceRequest
INSERT INTO MaintenanceRequest (tenant_ID, property_ID, RequestDate, Description, Status) VALUES
(1, 1, '2024-02-10', 'Fix leaky faucet', 'Open'),
(2, 2, '2024-03-05', 'Replace broken window', 'In Progress'),
(3, 3, '2024-04-10', 'Repair heating system', 'Completed'),
(4, 4, '2024-05-15', 'Fix door lock', 'Open'),
(5, 5, '2024-06-20', 'Replace lightbulbs', 'In Progress'),
(6, 6, '2024-07-25', 'Repair roof leak', 'Completed'),
(7, 7, '2024-08-30', 'Fix broken tiles', 'Open'),
(8, 8, '2024-09-04', 'Fix clogged sink', 'In Progress'),
(9, 9, '2024-10-09', 'Paint the walls', 'Completed'),
(10, 10, '2024-11-14', 'Replace air filter', 'Open');

-- Insert data into TenantReferral with 'Pending', 'Completed', and 'Cancelled' status
INSERT INTO TenantReferral (referrer_tenant_ID, referred_tenant_ID, ReferralDate, RewardAmount, ReferralStatus) VALUES
(1, 3, '2024-02-15', 100.00, 'Completed'),
(2, 4, '2024-03-10', 0.00, 'Pending'),
(5, 6, '2024-03-20', 0.00, 'Pending'),
(3, 7, '2024-04-05', 0.00, 'Cancelled'),
(4, 8, '2024-04-15', 150.00, 'Completed'),
(6, 9, '2024-05-01', 0.00, 'Pending'),
(7, 10, '2024-05-10', 0.00, 'Pending'),
(8, 1, '2024-05-20', 100.00, 'Completed'),
(9, 2, '2024-06-05', 0.00, 'Cancelled'),
(10, 5, '2024-06-15', 100.00, 'Completed');
