USE [ContactsRepo]
GO

IF EXISTS(SELECT 1 FROM sys.Tables 
          WHERE  Name = N'ClientDetails' AND Type = N'U')
BEGIN
  DROP TABLE dbo.ClientDetails
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ClientDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First] [varchar](200) NOT NULL,
	[Middle] [varchar](200) NULL,
	[Last] [varchar](200) NULL,
 CONSTRAINT [PK_ClientDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO