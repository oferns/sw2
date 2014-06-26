CREATE TABLE [dbo].[ResourceTypes] (
    [Id]          TINYINT             NOT NULL,
    [Name]        [dbo].[ShortString] NOT NULL,
    [Description] [dbo].[LongString]  NOT NULL,
    CONSTRAINT [PK_ResourceTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

