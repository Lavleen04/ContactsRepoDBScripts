USE [ContactsRepo]
GO

IF NOT EXISTS(SELECT 1 FROM [dbo].[PhoneDetails] WHERE ClientId = 1)
BEGIN
	INSERT INTO [dbo].[PhoneDetails]
			   ([ClientId]
			   ,[PhoneNumber]
			   ,[PhoneType])
		 VALUES
			   (1,
			   '847-985-0672',
			   'H')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[PhoneDetails] WHERE ClientId = 2)
BEGIN
	INSERT INTO [dbo].[PhoneDetails]
			   ([ClientId]
			   ,[PhoneNumber]
			   ,[PhoneType])
		 VALUES
			   (2,
			   '813-271-6404',
			   'M')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[PhoneDetails] WHERE ClientId = 2)
BEGIN
	INSERT INTO [dbo].[PhoneDetails]
			   ([ClientId]
			   ,[PhoneNumber]
			   ,[PhoneType])
		 VALUES
			   (2,
			   '813-271-6405',
			   'H')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[PhoneDetails] WHERE ClientId = 3)
BEGIN
	INSERT INTO [dbo].[PhoneDetails]
			   ([ClientId]
			   ,[PhoneNumber]
			   ,[PhoneType])
		 VALUES
			   (3,
			   '530-272-0409',
			   'W')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[PhoneDetails] WHERE ClientId = 4)
BEGIN
	INSERT INTO [dbo].[PhoneDetails]
			   ([ClientId]
			   ,[PhoneNumber]
			   ,[PhoneType])
		 VALUES
			   (4,
			   '415-654-3859',
			   'M')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[PhoneDetails] WHERE ClientId = 5)
BEGIN
	INSERT INTO [dbo].[PhoneDetails]
			   ([ClientId]
			   ,[PhoneNumber]
			   ,[PhoneType])
		 VALUES
			   (5,
			   '315-499-2577',
			   'M')
END



GO


