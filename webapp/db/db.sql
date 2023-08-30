create table admin(
	admin_id varchar(20) primary key,
	admin_pwd varchar(20) not null,
	admin_name varchar(30) not null
);

insert into admin values('admin','admin','admin');

create table plans(
	plan_id int auto_increment primary key,
	plan_name varchar(100) not null,
	speed varchar(50) not null,
	data varchar(100) not null,
	duration varchar(50) not null,
	cost float not null
);

insert into plans (plan_name, speed, data, duration, cost) VALUES
('HOME_WiFi/GHAR_KA_WiFi_RURAL','Upto 30 Mbps till 1000 GB', 'Unlimited Data Download', '1 Month', 399),
('Fibre Basic','Upto 40 Mbps till 3300 GB', 'Unlimited Data Download', '1 Month', 499),
('Fibre Rural HOME WiFi / GHAR KA WiFi','Upto 30 Mbps till 1000 GB', 'Unlimited Data Download', '6 Month', 1999),
('BSNL FIBRE_VALUE_OTT','Upto 100 Mbps till 1000 GB', 'Unlimited Data Download', '1 Month', 799),
('Fibre Premium','Upto 200 Mbps till 3300 GB', 'Unlimited Data Download', '12 Month', 17988),
('Fibre Basic ','Upto 60 Mbps till 3300 GB', 'Unlimited Data Download', '6 Month', 3663),
('Fibre Silver OTT','Upto 300 Mbps till 4500 GB', 'Unlimited Data Download', '1 Month', 2299),
('Fiber 1000GB CS330 - Bundled WiFi ONT','60 Mbps till 1000 GB', 'Unlimited Data Download', '6 Month', 4794),
('Fibre Premium','Upto 200 Mbps till 3300 GB', 'Unlimited Data Download', '6 Month', 8245),
('Fibre Ultra','Upto 300 Mbps till 4000 GB', 'Unlimited Data Download', '24 Month', 43176);

create table customer(
	c_id int auto_increment primary key,
	c_email varchar(100) not null,
	c_pwd varchar(100) not null,
	c_name varchar(100) not null,
	c_addr varchar(100) not null,
	c_phone varchar(10) not null,
	c_aadhar varchar(12) not null
);

create table employee(
	emp_id int auto_increment primary key,
	emp_name varchar(100) not null,
	emp_pwd varchar(100) not null,
	emp_addr varchar(100) not null,
	emp_phone varchar(10) not null,
	emp_join_date date not null
);

insert into employee(emp_name, emp_pwd, emp_addr, emp_phone, emp_join_date) values
('Ram Yadav','7866','Akurdi Pune 35','9823374977','2020-03-01'),
('Rahul Gandhi','7166','Akurdi Pune 35','8823374977','2020-04-01'),
('Sachin Pilot','7966','Chinchwad Pune 33','7823374977','2021-03-01'),
('Eknath Khadse','7766','Chinchwad Pune 33','9829974977','2022-03-01'),
('Dhananjay Mundhe','7832','Bhosari Pune 19','8883374977','2020-05-01'),
('Ajit Pawar','7811','Pimpri Pune 17','9823371977','2021-06-01');

create table bill(
	bill_id int auto_increment primary key,
	bill_date date not null,
	c_id int not null,
	emp_id int default 0,
	plan_id int not null,
	card_holder varchar(100) not null,
	card_number varchar(16) not null,
	status varchar(20) default 'Pending'
);

create table complaints(
	comp_id int auto_increment primary key,
	comp_date date not null,
	bill_id int not null,
	comp_text varchar(255) not null,
	status varchar(20) default 'Pending'
);

