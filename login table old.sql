/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[UserName]
      ,[Email]
      ,[PhoneNo]
      ,[UserType]
      ,[UserPassword]
      ,[UserRePassword]
  FROM [ContraDb].[dbo].[NewContracttble]
	
  select * from ID
  alter table NewContracttble
  alter column	Email Varchar(30);


  create table URegistration
  (
  Id int primary key identity,
  Username varchar(max),
  Email varchar(max),
  PhoneNo numeric(10),
  UserType varchar(max),
  UserPassword varchar(max),
  UserRePassword varchar(max)
  )
  select * from URegistration
