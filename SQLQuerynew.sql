USE [ContraTablefinal]
GO
/****** Object:  StoredProcedure [dbo].[SpUpdateContracts]    Script Date: 14-12-2022 00:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[SpUpdateContracts]
@ContractId int,
@ContractName varchar(30),
@ContractType varchar(30),
@CompanyName varchar(30),
@StartDate date,
@EndDate date,
@Location varchar(20)
--@Status varchar(10)=null

AS
BEGIN
declare @RowCount int=0
set @RowCount=(select Count(1) from AddContract where ContractName=@ContractName and ContractId<>@ContractId)
begin try
begin tran
if(@RowCount=0)
begin
Update AddContract
set ContractName=@ContractName,ContractType=@ContractType,CompanyName=@CompanyName,StartDate=@StartDate,EndDate=@EndDate,Location=@Location  
--VALUES(@ContractName ,@ContractType,@CompanyName,@StartDate,@EndDate,@Location,@Status);
where ContractId=@ContractId
end
commit tran
END try
begin catch
rollback tran
select ERROR_MESSAGE()
end catch
end
