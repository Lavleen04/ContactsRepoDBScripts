USE [ContactsRepo]
GO

IF EXISTS(SELECT 1 FROM sys.Tables 
          WHERE  Name = N'ClientRepoConfig' AND Type = N'U')
BEGIN
  DROP TABLE dbo.ClientRepoConfig
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ClientRepoConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigType] [varchar](50) NOT NULL,
	[ConfigKey] [varchar](100) NOT NULL,
	[ConfigValue] [varchar](100) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO