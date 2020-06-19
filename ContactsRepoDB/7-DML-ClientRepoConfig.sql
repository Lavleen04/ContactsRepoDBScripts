USE [ContactsRepo]
GO

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientRepoConfig] WHERE [ConfigKey] = 'Home' AND [ConfigType] = 'PhoneType')
BEGIN
	INSERT INTO [dbo].[ClientRepoConfig]
			   ([ConfigKey]
			   ,[ConfigType]
			   ,[ConfigValue])
		 VALUES
			   ('Home',
			   'PhoneType',
			   'H')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientRepoConfig] WHERE [ConfigKey] = 'Work' AND [ConfigType] = 'PhoneType')
BEGIN
INSERT INTO [dbo].[ClientRepoConfig]
           ([ConfigKey]
           ,[ConfigType]
           ,[ConfigValue])
     VALUES
           ('Work',
           'PhoneType',
           'W')
END

IF NOT EXISTS(SELECT 1 FROM [dbo].[ClientRepoConfig] WHERE [ConfigKey] = 'Mobile' AND [ConfigType] = 'PhoneType')
BEGIN
	INSERT INTO [dbo].[ClientRepoConfig]
			   ([ConfigKey]
			   ,[ConfigType]
			   ,[ConfigValue])
		 VALUES
			   ('Mobile',
			   'PhoneType',
			   'M')
END
GO


