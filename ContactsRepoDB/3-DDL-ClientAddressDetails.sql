USE [ContactsRepo]
GO

ALTER TABLE [dbo].[ClientAddressDetails] DROP CONSTRAINT [FK_ClientAddressDetails_ClientDetails]
GO

IF EXISTS(SELECT 1 FROM sys.Tables 
          WHERE  Name = N'ClientAddressDetails' AND Type = N'U')
BEGIN
  DROP TABLE dbo.ClientAddressDetails
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ClientAddressDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Street] [nvarchar](500) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](200) NOT NULL,
	[Zip] [int] NOT NULL,
	[Email] [nvarchar](500) NULL,
 CONSTRAINT [PK_ClientAddressDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ClientAddressDetails]  WITH CHECK ADD  CONSTRAINT [FK_ClientAddressDetails_ClientDetails] FOREIGN KEY([ClientId])
REFERENCES [dbo].[ClientDetails] ([Id])
GO

ALTER TABLE [dbo].[ClientAddressDetails] CHECK CONSTRAINT [FK_ClientAddressDetails_ClientDetails]
GO


