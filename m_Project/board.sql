create table board(
username varchar(50),
title varchar(50),
memo varchar(50),
time datetime default current_timestamp,
password varchar(20),
hit int,
num int,
ref int,
step int,
indent int,
step2 int,
primary key(num));