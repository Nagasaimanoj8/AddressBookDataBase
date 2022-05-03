-----UC1 CREATE ADDRESSBOOK SERVICE DATABASE-----
create database Addressbook;
------UC2 CREATE ADDRESSBOOK TABLE WITH FIRST NAME,LASTNAME,ADDRESS,CITY,STATE,PHONENUMBER,ZIPCODE,EMAILADDRESS---
create table AdressBookTable
(
PersonId int identity(1,1)primary key,
firstName varchar(100),
LastName  varchar(100),
Address varchar(100),
city varchar(50),
State varchar(100),
ZipCode bigint,---HEREBIGINT TAKES 8BYTES OF MERMORY
PhoneNumber bigint,
Email varchar(50)
);