-- Write your SQL code here
START TRANSACTION;  


-- Insert funding record  
INSERT INTO Funding (program_id, amount, disbursement_date)  
VALUES (1, 10000.00, CURRENT_DATE);  


-- Update program funding total  
UPDATE Program  
SET total_funding_received = total_funding_received + 10000.00  
WHERE program_id = 1;  


COMMIT;  
