create database ContractDatabase
use ContractDatabase
create table ContractTable
(
Id int   not null identity(1,1) primary key,
FullName varchar(30),
MobileNo 
 CHAR(10), -- you might not want to have such a precise length
    CONSTRAINT chk_mobno CHECK (MobileNo not like '%[^0-9]%') ,
	Email varchar(30) not null,
UserType varchar(10) not null,
Password varchar(20) not null,
RePassword varchar(20) not null
);

Drop table ContractTable
create procedure [dbo].[SPContract]  
(  
@FullName varchar(30)=NULL,  
@MobileNo char(10)=NULL,  
@Email varchar(30)=NULL,  
@UserType varchar(10)=NULL,  
@Password varchar(20)=NULL,  
@RePassword varchar(15)  
)  
as  
begin  
if @status='Insert'  
begin  
insert into Enrollment(FirstName,LastName,Password,Gender,Email,Phone,SecurityAnwser)values(@FirstName,@LastName,@Password,@Gender,@Email,@Phone,@SecurityAnwser) 