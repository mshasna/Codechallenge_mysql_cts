create database dql2;
USE dql2;

CREATE TABLE Customer_Details(
	Customer_id VARCHAR(10) PRIMARY KEY,
    Customer_Name VARCHAR(30),
    Phone_No VARCHAR(10),
    City VARCHAR(20)
);

CREATE TABLE PET_DETAILS
(
Pet_id VARCHAR(5) NOT NULL PRIMARY KEY,
pet_name varchar(30) not null,
pet_type varchar(10) not null,
breed varchar(20),
gender varchar(10),
age_in_days int(4),
price double(7,2)
);

CREATE TABLE Purchase_Details(
	Purchase_id INT(5) PRIMARY KEY,
    Customer_id VARCHAR(10) not null,
    FOREIGN KEY (Customer_id) REFERENCES Customer_Details(Customer_id),
    Pet_id VARCHAR(5) not null,
    Purchase_Date DATE,
    Total_Amount_Paid DOUBLE(8,2),
    foreign key (Pet_id) references PET_DETAILS(Pet_id)
);
INSERT INTO Customer_Details VALUES('10','Karthika','9878435634','Mumbai'),
									('15','Marpappa',8822334477,'Kochi'),
                                    ('20','Hana',2233446655,'pune');
                                    
Insert into PET_DETAILS values('20','Kaiser','Dog','pug','m','200','5000.00'),
							  ('30','Arjun','cat','persian','f','200',5000.00);
                              
INSERT INTO Purchase_Details VALUES('10','15','20','2022-10-23',10000.00),
                                    ('15','15','30','2020-09-08',50000.00),
                                    ('20','15','20','2021-04-01',200000.00);

SELECT * FROM Customer_Details;
SELECT * FROM Purchase_Details;


SELECT q1.Customer_id,Customer_Details.Customer_Name,q1.No_of_Pets 
FROM (SELECT * FROM (SELECT Customer_id, COUNT(Customer_id) AS 'No_of_Pets' FROM Purchase_Details GROUP BY Customer_id) q2 WHERE No_of_Pets > 1) q1
JOIN Customer_Details 
WHERE q1.Customer_id = Customer_Details.Customer_id ORDER BY q1.Customer_id ASC;