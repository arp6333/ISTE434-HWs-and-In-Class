LOAD DATA INFILE 'SalesPerson.csv'
INTO TABLE SalesPerson
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;