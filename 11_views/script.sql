-- Write your SQL code here
CREATE VIEW ProgramFundingOverview AS  
SELECT program_id, program_name, total_funding_received, status  
FROM Program;  


CREATE VIEW FundingDisbursementSummary AS  
SELECT F.program_id, P.program_name, F.amount, F.disbursement_date  
FROM Funding F  
JOIN Program P ON F.program_id = P.program_id;  


