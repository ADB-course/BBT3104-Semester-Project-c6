-- Write your SQL code here
CREATE TRIGGER ArchiveCompletedPrograms  
BEFORE DELETE ON Program  
FOR EACH ROW  
BEGIN  
    IF OLD.status = 2 AND DATEDIFF(CURRENT_DATE, OLD.start_date) > 365 THEN  
        INSERT INTO Archived_Programs (program_id, program_name, start_date, status)  
        VALUES (OLD.program_id, OLD.program_name, OLD.start_date, OLD.status);  
    END IF;  
END;  

CREATE TRIGGER NotifyFundingExpiry  
AFTER UPDATE ON Funding  
FOR EACH ROW  
BEGIN  
    IF DATEDIFF(NEW.disbursement_date, CURRENT_DATE) <= 30 THEN  
        INSERT INTO Notifications (program_id, message)  
        VALUES (NEW.program_id, 'Funding deadline is approaching.');  
    END IF;  
END;  
