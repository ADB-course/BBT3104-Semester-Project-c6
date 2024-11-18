-- Write your SQL code here
DELIMITER //  
CREATE PROCEDURE GetProgramFundingReport()  
BEGIN  
    SELECT program_id, program_name, total_funding_received  
    FROM Program;  
END //  
DELIMITER ;  

DELIMITER //  
CREATE PROCEDURE GetFundingDisbursements(IN prog_id INT)  
BEGIN  
    SELECT funding_id, amount, disbursement_date  
    FROM Funding  
    WHERE program_id = prog_id;  
END //  
DELIMITER ;  
