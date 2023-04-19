create table [dbo].[NewContracttb]
(
Id int Identity(1,1) primary key,
UserName nvarchar(30),
Email nvarchar(30),
UserType nvarchar(10),
UserPassword nvarchar(50),
UserRePassword nvarchar(50)


);