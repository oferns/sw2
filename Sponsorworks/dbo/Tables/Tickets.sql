CREATE TABLE [dbo].[Tickets] (
    [Id]   INT                 IDENTITY (1, 1) NOT NULL,
    [Name] [dbo].[ShortString] NOT NULL,
    CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED ([Id] ASC)
);

