create table AddContracts
(
ContractId  int primary key identity(1000,3) not null,
ContractName varchar(30),
CompanyName varchar(30),
StartDate date,
EndDate date,
Address varchar(50),
Status varchar(10)
);

AS
BEGIN
insert into Registertables(ContractName,CompanyNam,MobileNo,UserType,Password)  
VALUES(@Name ,@Email,@MobileNo,@UserType,@Password);
END
