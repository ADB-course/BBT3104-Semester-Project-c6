-- Write your SQL code here
-- Creating indexes for the Funding and Program tables

-- Funding Table: Index on DonorID (foreign key)
CREATE INDEX idx_donor_id ON Funding(DonorID);

-- Program Table: Index on ProgramStatus
CREATE INDEX idx_program_status ON Program(ProgramStatus);
