Create database ddl5;
Use ddl5;
CREATE TABLE t_hall_details(
hall_id VARCHAR(10) PRIMARY KEY ,
hall_name VARCHAR(25) ,
city VARCHAR(20) ,
hall_type VARCHAR(10) ,
capacity INT(10),
costperday INT(10)
);
CREATE TABLE t_customer_details(
customer_id VARCHAR(10) PRIMARY KEY,
customer_name VARCHAR(20) ,
mobileno INT(11) ,
customer_city VARCHAR(20)
);
CREATE TABLE t_hall_booking(
hall_id VARCHAR(10),
customer_id VARCHAR(10)  ,
event_name VARCHAR(20) ,
event_date DATE,
FOREIGN KEY (hall_id) REFERENCES t_hall_details(hall_id),
FOREIGN KEY (customer_id) REFERENCES t_customer_details(customer_id),
PRIMARY KEY (customer_id)
);