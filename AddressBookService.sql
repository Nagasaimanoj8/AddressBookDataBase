-----UC1 CREATE ADDRESSBOOK SERVICE DATABASE-----
create database AddressBook
-------UC2 CREATING ADDRESS BOOK TABLE WITH FIRST LAST NAMES,ADDRESS,CITY,STATE,ZIP,PHNUM,EMAIL---
drop table AddressBookTable;
----
create table AddressBookTable
(
personId int identity(1,1) primary key,
FirstName varchar(100),
LastName  varchar(100),
Address varchar(200),
city varchar(50),
state varchar(100),
zip bigint,
PhoneNumber bigint,
EMail varchar(50)
)