create table RegDtb(id int primary key identity(1,1),Name varchar(50),Email varchar(50),MobileNo numeric(10),UserType int,Password varchar(10),Re_Password varchar(10))
alter table RegDtb
alter column MobileNo varchar(10);
alter column UserType int
alter table RegDtb

drop column Id  
select * from RegDtb
create Procedure Register_Sp
@Name varchar(50),
@Email varchar(50),
@MobileNo varchar(10),
@UserType varchar(10),
@Password varchar(10),
@Re_Password varchar(10)
AS
BEGIN
insert into RegDtb(Name,Email,MobileNo,UserType,Password,Re_Password)  
VALUES(@Name ,@Email,@MobileNo,@UserType,@Password,@Re_Password);
END


create table MUserType(
UserID int primary key,
UserRole varchar(max)
)
insert into MUserType(UserID,UserRole)values(1,'Admin')
insert into MUserType(UserID,UserRole)values(2,'Client')
select * from MUserType
ALTER TABLE RegDtb
ADD CONSTRAINT ShiftFk FOREIGN KEY (UserType)
REFERENCES MUserType(UserID)
ON UPDATE CASCADE ON DELETE CASCADE;
execute Register_Sp
