create database ContractDatabase
use ContractDatabase
create table ContractTable
(
Id int   not null identity(1,1) primary key,
FullName varchar(30),
MobileNo 
 CHAR(10), -- you might not want to have such a precise length
    CONSTRAINT chk_mobno CHECK (MobileNo not like '%[^0-9]%') ,
	Email varchar(30) ,
UserType varchar(10) ,
Password varchar(20) ,
RePassword varchar(20) 
);
select * from ContractTable
create procedure [dbo].[SPContract] 
(
@FullName varchar(30)=NULL,  
@MobileNo char(10)=NULL,  
@Email varchar(30)=NULL,  
@UserType varchar(10)=NULL,  
@Password varchar(20)=NULL,  
@RePassword varchar(20)=Null  
)
as  
begin  
insert into ContractTable(FullName,MobileNo,Email,UserType,Password,RePassword)values(@FullName,@MobileNo,@Email,@UserType,@Password,@RePassword) 
end
exec SPContract 'Ankit','9999999999','Ankit@gmail.com','Admin','ankit@123','ankit@123';