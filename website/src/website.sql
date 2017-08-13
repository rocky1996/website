create database website;
use website;
create table user(
	id varchar(100) primary key,
	username varchar(100),
	password varchar(100),
	mobilephone varchar(100),
	email varchar(100),
	address varchar(100)
);              

create table admin(
	id varchar(100) primary key,
	username varchar(100),
	password varchar(100)
);

create table classify(
	id varchar(100) primary key,
	name varchar(100),
	description varchar(100)
);

create table book(
	id varchar(100) primary key,
	name varchar(100),
	author varchar(100),
	price float(8,2),
	image varchar(100),
	description varchar(100),
	classify_id varchar(100),
	constraint classify_id_fk foreign key(classify_id) references classify(id)	
);