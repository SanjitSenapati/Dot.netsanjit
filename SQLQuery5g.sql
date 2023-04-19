
CREATE TABLE [dbo].[ExcelModel](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](Max) NOT NULL,
    [UpdatedManager] [nvarchar](Max) NOT NULL,
    [Location] [nvarchar](Max) NOT NULL,
    [TechnologyImplementation] [nvarchar] (Max)NOT NULL,
    [PrimaryProduct] [nvarchar] (max)NOT NULL,
    [RoleDesignation] [nvarchar](Max),
    [ResourceBillability] [nvarchar](Max),
	[RoleinProject][nvarchar](Max),
	[CurrentProject][nvarchar](Max),
	[Count][int]
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 