-- Write your SQL code here
-- Insert data into ProgramWithCheck
INSERT INTO ProgramWithCheck (program_name, start_date, status, total_funding_received) VALUES
('Community Education Program', '2024-01-15', 1, 5000.00),
('Youth Mentorship Program', '2024-02-01', 1, 15000.00),
('Health Awareness Campaign', '2024-03-10', 0, 2500.00),
('Environmental Conservation Initiative', '2024-04-20', 1, 8000.00);

-- Insert data into FundingWithCheck
INSERT INTO FundingWithCheck (program_id, amount, disbursement_date) VALUES
(1, 2000.00, '2024-01-10'),
(1, 3000.00, '2024-01-12'),
(2, 5000.00, '2024-01-30'),
(2, 10000.00, '2024-02-15'),
(3, 2500.00, '2024-03-05'),
(4, 4000.00, '2024-04-15'),
(4, 4000.00, '2024-04-18');
