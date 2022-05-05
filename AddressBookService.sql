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
------------UC6 RETRIVING RECORD BASED ON CITY OR STATE----------
select * from AddressBookTable where state='A.P'and city='NLR'
select * from AddressBookTable where state='K.N'and city='LSG'
-------------UC7 CALACULATING THE SIZE OF THR RECORD BY STATE OR CITY -------------------
select count(phonenumber)as NoOfContact,state from AddressBookTable group by state
select count(Phonenumber)as NoofContact,city from AddressBookTable group by city
--------------UC8 RETRIVE RECORD BASE ON CITY SORTED ORDER-------------
select * from AddressBookTable where city='NLR' order by(firstName)
select * from AddressBookTable where state='K.N' order by(firstName)
--UC9-Adding type of the contact
alter table addressBookTable add bookType varchar(200)
update AddressBookTable set bookType='Family' where personId=1 or personId=2
update AddressBookTable set bookType='Friend' where personId=4 or personId=3
update AddressBookTable set bookType='Profession' where personId=7
select * from AddressBookTable
--UC10 Calculating the size of the record based on type
select count(phoneNumber)as NoOfContact,
bookType from AddressBookTable group by bookType
select * from AddressBookTable
--UC11 Adding contact in Two type
insert into AddressBookTable values ('Vijay','Kumar','Anna Nagar','Kottaiyam','Kerala',869456,9654973250,'vk@gmail.com','Friend')
select * from AddressBookTable
--UC12 Creating the ER Diagram for the Table------
drop table ContactType
Create table ContactType 
(
 typeId int primary key,
 typeName varchar(50)
)
drop table ContactAddress
create table ContactAddress
(
 contactId int ,
 typeId int
)
drop table AddressBook 
create table AddressBook
(
  personId int identity(1,1) primary key,
  firstName varchar(100),
  lastName varchar(100),
  address varchar(200),
  city varchar(50),
  state varchar(100),
  zip bigint,
  phoneNumber bigint,
  email varchar(50),
  typeId int
)
--inserting records into the AddressBook----------
Insert into AddressBook (firstName,lastName,address,city,state,zip,phoneNumber,email)
Select firstName,lastName,address,city,state,zip,phoneNumber,email from AddressBookTable

Alter table AddressBook drop column typeId
select * from AddressBook

--Inserting the contact type such as Friends and family, Profession
insert into ContactType values (1,'Friend'),(2,'Family'),(3,'Profession')
select * from ContactType

--Inserting the Contact Address that link type and person id
insert into ContactAddress values(2,2),(3,2),(2,1),(4,1),(5,3)
select * from ContactAddress
Alter table ContactAddress Add foreign key (contactId) REFERENCES AddressBook(personId)
Alter table ContactAddress Add foreign key (typeId) REFERENCES ContactType(typeId)

