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
------------UC3 INSERT RECORDS INTO THE TABLE------------
insert into AddressBookTable values
('Manoj','Sai','A.kNagar','NlR','A.P',524001,7458965477,'sai@gmail.com'),
('Jonnam','Ias','J.KColony','LSG','K.N',524005,7745698547,'ias@gmail.com'),
('Jonam','Ias','J.KColony','LSG','K.N',524005,7745698547,'ias@gmail.com')
select * from AddressBookTable
-----------UC4 EDIT CONTACTS IN TABLE-----------
update AddressBookTable set email='iam@gmail.com' where FirstName='Jonam' and LastName='Ias'
update AddressBookTable set FirstName='Bharath', LastName='P'where FirstName='Jonam' and LastName='Ias'
------------UC5 DELETE THE RECORD FROM TABLE---------
delete from AddressBookTable where FirstName='Bharath' and LastName='P'