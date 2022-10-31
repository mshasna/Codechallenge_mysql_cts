Create database cc1;
use cc1;
create table t_agent(
					agent_id VARCHAR(25) NOT NULL,
					agent_name VARCHAR(100),
					agent_email VARCHAR(50),
					agent_city varchar(100) ,
					agent_phone DECIMAL(15,0) ,
					target_policy_sum decimal(15,0),
					primary key(agent_id)
                    );

CREATE TABLE t_policy(
			 policy_id VARCHAR(25) NOT NULL PRIMARY KEY,
             policy_name VARCHAR(100) NOT NULL,
             agent_id varchar(25),
             policy_type varchar(100),
             policy_sum DECIMAL(10,0),
             policy_status VARCHAR(100),
             policy_tenure DECIMAL(5,0)
             );
             
CREATE TABLE t_member(
			member_id VARCHAR(25) PRIMARY KEY,
            member_name VARCHAR(100),
            member_email VARCHAR(100),
            member_city VARCHAR(100),
            member_phone DECIMAL(10,0),
            agent_id VARCHAR(100),
            policy_id VARCHAR(100),
            foreign key (agent_id) REFERENCES t_agent(agent_id),
            foreign key (policy_id) REFERENCES t_policy(policy_id)
            );
            
INSERT INTO t_agent VALUES
			('M124','Mohan','m123@gmail.com','Pune',9856734251,25000),
            ('L987','KK','k23@yahoo.co.in','Chennai',6532658789,500000),
            ('M87','Arjun','a123@gmail.com ','Chennai', 9946966469,100000),
            ('AK56','Rohit','rk78@xyz.com','Kochi',9047892345,2000000);
INSERT INTO t_policy VALUES
			('HH9','P1','A1','Type1',250000,'active',200),
            ('a23','p2','A2','Type2',260000,'expired',60),
            ('K22','P3','A3','Type1',400000,'active',10),
            ('XY7','P4','A4','Type3',700000,'active',35);
INSERT INTO t_member VALUES
			('Y2','Rishab','r7@abc.com','Ernakulam',8714388991,'s12','p2'),
            ('X44','Vinu','vv22@yahoo.co.in','Vishakapatnam',9944667733,'v7','p33'),
            ('QW4','Hila','hx22@abc.com','Kochi',663344217689,'q1','p21'),
            ('a11','Ri','wwb@hjh.com','Uganda',8822762314,'w2','o4');
            
            select * from t_agent;
            
 update t_agent
set target_policy_sum =
	case agent_city
	when 'Pune' then 400000 
	when 'Chennai' then 250000
	else TARGET_POLICY_SUM
end
where agent_id like 'M%';
select * from t_agent;              
                
                
            
            
            
            
            
             