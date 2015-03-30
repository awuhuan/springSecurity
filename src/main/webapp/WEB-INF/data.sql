CREATE TABLE users (
	username VARCHAR(50) NULL,
	password VARCHAR(50) NULL,
	enabled   ENUM('Y','N') NULL DEFAULT NULL
)COLLATE='utf8_general_ci' ENGINE=InnoDB;

create table authorities (
    username VARCHAR(50) not null,
    authority VARCHAR(50) not null,
    constraint fk_authorities_users foreign key(username) references users(username)
);

insert into users(username,password,enabled) values('admin','admin',"Y");
insert into users(username,password,enabled) values('user','user',"Y");
insert into authorities(username,authority) values('admin','ROLE_ADMIN');
insert into authorities(username,authority) values('admin','ROLE_USER');
insert into authorities(username,authority) values('user','ROLE_USER');