create table MasterContractStatus
(
StatusId int identity(1,1),
StatusName varchar(30),
Is_Active bit default 1)
insert into MasterContractStatus (StatusName)values('Draft'),('Pending'),('Approve'),('Reject');

select * from MasterContractStatus

----------------------------------------------------


send for approval --------     0