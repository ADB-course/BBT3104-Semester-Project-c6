-- Write your SQL code here
CREATE TABLE ProgramWithCheck (  
    program_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,  
    program_name VARCHAR(255) NOT NULL,  
    start_date DATE NOT NULL CHECK (start_date <= CURRENT_DATE),  
    status TINYINT(1) DEFAULT 0,  
    total_funding_received DECIMAL(10, 2) DEFAULT 0  
) ENGINE=InnoDB;  

CREATE TABLE FundingWithCheck (  
    funding_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,  
    program_id INT UNSIGNED NOT NULL,  
    amount DECIMAL(10, 2) NOT NULL CHECK (amount > 0),  
    disbursement_date DATE NOT NULL,  
    FOREIGN KEY (program_id) REFERENCES ProgramWithCheck(program_id)  
        ON DELETE CASCADE ON UPDATE CASCADE  
) ENGINE=InnoDB;  
