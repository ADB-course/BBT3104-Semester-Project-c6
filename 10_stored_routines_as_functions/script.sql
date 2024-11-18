-- Write your SQL code here
DELIMITER //  
CREATE FUNCTION CalculateTotalFunding(prog_id INT)  
RETURNS DECIMAL(10, 2)  
BEGIN  
    RETURN (SELECT SUM(amount) FROM Funding WHERE program_id = prog_id);  
END //  
DELIMITER ;  

DELIMITER //  
CREATE FUNCTION CalculateRemainingFunding(prog_id INT)  
RETURNS DECIMAL(10, 2)  
BEGIN  
    RETURN (  
        SELECT total_funding_received  
        FROM Program  
        WHERE program_id = prog_id  
    ) - (  
        SELECT SUM(amount)  
        FROM Funding  
        WHERE program_id = prog_id  
    );  
END //  
DELIMITER ;  
