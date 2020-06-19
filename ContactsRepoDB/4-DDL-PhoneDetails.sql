USE [ContactsRepo]
GO

ALTER TABLE [dbo].[PhoneDetails] DROP CONSTRAINT [FK_PhoneDetails_ClientDetails]
GO

IF EXISTS(SELECT 1 FROM sys.Tables 
          WHERE  Name = N'PhoneDetails' AND Type = N'U')
BEGIN
  DROP TABLE dbo.PhoneDetails
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PhoneDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[PhoneType] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PhoneDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[PhoneDetails]  WITH CHECK ADD  CONSTRAINT [FK_PhoneDetails_ClientDetails] FOREIGN KEY([ClientId])
REFERENCES [dbo].[ClientDetails] ([Id])
GO

ALTER TABLE [dbo].[PhoneDetails] CHECK CONSTRAINT [FK_PhoneDetails_ClientDetails]
GO