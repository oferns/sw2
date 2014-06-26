CREATE TABLE [dbo].[Venues] (
    [Id]   INT                IDENTITY (1, 1) NOT NULL,
    [Name] [dbo].[LongString] NOT NULL,
    CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED ([Id] ASC)
);

