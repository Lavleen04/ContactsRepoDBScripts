USE [ContactsRepo]
GO

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientAddressDetails] WHERE ClientId = 1)
BEGIN
	INSERT INTO [dbo].[ClientAddressDetails]
			   ([ClientId]
			   ,[Street]
			   ,[City]
			   ,[State]
			   ,[Zip]
			   ,[Email])
		 VALUES
			   (1,
			   '622 Chenoweth Drive',
			   'Nashville',
			   'Tennessee',
			   '37216',
			   'Harold.Gilkey@gmail.com')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientAddressDetails] WHERE ClientId = 2)
BEGIN
	INSERT INTO [dbo].[ClientAddressDetails]
			   ([ClientId]
			   ,[Street]
			   ,[City]
			   ,[State]
			   ,[Zip]
			   ,[Email])
		 VALUES
			   (2,
			   '531 Steve Hunt Road',
			   'Miami',
			   'Florida',
			   '33131',
			   'TomB123@gmail.com')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientAddressDetails] WHERE ClientId = 3)
BEGIN
	INSERT INTO [dbo].[ClientAddressDetails]
			   ([ClientId]
			   ,[Street]
			   ,[City]
			   ,[State]
			   ,[Zip]
			   ,[Email])
		 VALUES
			   (3,
			   '2268 Rodney Street',
			   'Saint Louis',
			   'Missouri',
			   '63146',
			   'D_MacA@yahoo.com')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientAddressDetails] WHERE ClientId = 4)
BEGIN
	INSERT INTO [dbo].[ClientAddressDetails]
			   ([ClientId]
			   ,[Street]
			   ,[City]
			   ,[State]
			   ,[Zip]
			   ,[Email])
		 VALUES
			   (4,
			   '2244 Romrog Way',
			   'MECKLENBURG',
			   'New York',
			   '14863',
			   'LauraC.Barrett@yahoo.com')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientAddressDetails] WHERE ClientId = 5)
BEGIN
	INSERT INTO [dbo].[ClientAddressDetails]
			   ([ClientId]
			   ,[Street]
			   ,[City]
			   ,[State]
			   ,[Zip]
			   ,[Email])
		 VALUES
			   (5,
			   '1805 Oak Avenue',
			   'Roselle',
			   'Illinois',
			   '60172',
			   'JWTindall@gmail.com')
END

GO


