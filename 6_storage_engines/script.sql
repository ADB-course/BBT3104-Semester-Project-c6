-- Write your SQL code here
CREATE TABLE Program (  
    program_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,  
    program_name VARCHAR(255) NOT NULL,  
    start_date DATE NOT NULL,  
    status TINYINT(1) DEFAULT 0,  
    total_funding_received DECIMAL(10, 2) DEFAULT 0,  
    INDEX (status) USING BTREE,  
    INDEX (start_date) USING BTREE  
) ENGINE=InnoDB;  


CREATE TABLE Funding (  
    funding_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,  
    program_id INT UNSIGNED NOT NULL,  
    amount DECIMAL(10, 2) NOT NULL,  
    disbursement_date DATE NOT NULL,  
    FOREIGN KEY (program_id) REFERENCES Program(program_id)  
        ON DELETE CASCADE ON UPDATE CASCADE,  
    INDEX (disbursement_date) USING BTREE  
) ENGINE=InnoDB; 
