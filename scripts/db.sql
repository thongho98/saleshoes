create database dbsaleshoes character set utf8 collate utf8_bin;

use dbsaleshoes;

#table
create table users(
	id bigint(12) not null auto_increment primary key,
	displayName varchar(255) not null,
  	username varchar(255) not null,
  	email varchar(500) not null,
  	phone varchar(50) default null,
  	password varchar(1000) not null,
  	hash_type varchar(50) default 'MD5',
  	active bit(1) default 1
);

create table roles(
	id int not null auto_increment primary key,
	roleName varchar(255) not null
);

create table permission(
	id int not null auto_increment primary key,
	permissionName varchar(255) not null
);

create table user_role(
	id int not null auto_increment primary key,
	user_id bigint(12) not null,
	role_id int not null,
	foreign key (user_id) references users(id),
	foreign key (role_id) references roles(id)
);

create table role_permission(
	id int not null auto_increment primary key,
	role_id int not null,
	permission_id int not null,
	foreign key (permission_id) references permission(id),
	foreign key (role_id) references roles(id)
);

create table categories(
	id int not null auto_increment primary key,
	name varchar(255) not null,
	image varchar(1000) null
);

create table status_product(
	id int not null auto_increment primary key,
	name varchar(255) not null
);


create table size_shoes(
	id int not null primary key,
	quantity int not null
);

create table products(
	id int not null auto_increment primary key,
	name varchar(255) not null,
	price double not null,
	update_at date,
	id_category int not null,
	id_status int not null,
	url_img varchar(255) not null,
	foreign key (id_category) references categories(id),
	foreign key (id_status) references status_product(id)
);

create table size_product(
	id int not null auto_increment primary key,
	id_size int not null,
	id_product int not null,
	unit varchar(50) not null,
	foreign key (id_size) references size_shoes(id),
	foreign key (id_product) references products(id)
);

create table description(
	id int not null auto_increment primary key,
	id_product int not null,
	code varchar(50) not null,
	description_detail varchar(255),
	material varchar(255) not null,
	brands varchar(255) not null,
	design varchar(255) not null,
	madein varchar(255) not null,
	foreign key (id_product) references products(id)
);
create table bill_status(
	id int not null auto_increment primary key,
	name varchar(50) not null
);

create table bills(
	id bigint(12) not null auto_increment primary key,
	id_user bigint(12) not null,
	id_status int not null,
	total double not null,
	checkout_day date null,
	checkin_day date null,
	notes varchar(255) not null,
	foreign key (id_user) references users(id),
	foreign key (id_status) references bill_status(id)
);

create table bill_detail(
	id bigint(12) not null auto_increment primary key,
	id_bill bigint(12) not null,
	id_product int not null,
	quantity int not null,
	foreign key (id_bill) references bills(id),
	foreign key (id_product) references products(id)
);

#bonus function
create table promotion(
	id int not null auto_increment primary key,
	name varchar(255) not null,
	daystart date not null,
	dayend date not null,
	url varchar(1000) not null
);