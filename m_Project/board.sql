create table board(
username varchar(50),
title varchar(50),
memo varchar(500),
time datetime default current_timestamp,
password varchar(20),
hit int,
num int auto_increment,
ref int,
step int,
indent int,
step2 int,
primary key(num));