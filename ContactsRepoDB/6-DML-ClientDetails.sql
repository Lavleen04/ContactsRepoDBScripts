USE [ContactsRepo]
GO

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientDetails] WHERE [First] = 'Harold' AND [Middle] = 'Francis' AND [Last] = 'Gilkey')
BEGIN
	INSERT INTO [dbo].[ClientDetails]
			   ([First]
			   ,[Middle]
			   ,[Last])
		 VALUES
			   ('Harold',
			   'Francis',
			   'Gilkey')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientDetails] WHERE [First] = 'Tom' AND [Middle] = '' AND [Last] = 'Bachman')
BEGIN
	INSERT INTO [dbo].[ClientDetails]
			   ([First]
			   ,[Middle]
			   ,[Last])
		 VALUES
			   ('Tom',
			   '',
			   'Bachman')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientDetails] WHERE [First] = 'David' AND [Middle] = 'R' AND [Last] = 'MacArthur')
BEGIN
	INSERT INTO [dbo].[ClientDetails]
			   ([First]
			   ,[Middle]
			   ,[Last])
		 VALUES
			   ('David',
			   'R',
			   'MacArthur')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientDetails] WHERE [First] = 'Laura' AND [Middle] = 'C' AND [Last] = 'Barrett')
BEGIN
	INSERT INTO [dbo].[ClientDetails]
			   ([First]
			   ,[Middle]
			   ,[Last])
		 VALUES
			   ('Laura',
			   'C',
			   'Barrett')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientDetails] WHERE [First] = 'Joyce' AND [Middle] = 'William' AND [Last] = 'Tindall')
BEGIN
	INSERT INTO [dbo].[ClientDetails]
			   ([First]
			   ,[Middle]
			   ,[Last])
		 VALUES
			   ('Joyce',
			   'William',
			   'Tindall')
END

GO


