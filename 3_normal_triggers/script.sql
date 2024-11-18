-- Write your SQL code here
CREATE TRIGGER UpdateProgramStatus  
AFTER INSERT ON Funding  
FOR EACH ROW  
BEGIN  
    UPDATE Program  
    SET status = 1  
    WHERE program_id = NEW.program_id AND status = 0;  
END;  

CREATE TRIGGER UpdateFundingTotal  
AFTER INSERT ON Funding  
FOR EACH ROW  
BEGIN  
    UPDATE Program  
    SET total_funding_received = total_funding_received + NEW.amount  
    WHERE program_id = NEW.program_id;  
END;  
