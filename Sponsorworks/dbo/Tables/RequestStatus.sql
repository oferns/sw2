CREATE TABLE [dbo].[RequestStatus]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] [dbo].[ShortString] NOT NULL, 
    [Description] [dbo].[LongString] NOT NULL
)
