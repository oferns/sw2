CREATE TABLE [dbo].[Tokens] (
    [Id]          TINYINT             NOT NULL,
    [Name]        [dbo].[ShortString] NOT NULL,
    [Description] [dbo].[LongString]  NOT NULL,
    CONSTRAINT [PK_Tokens] PRIMARY KEY CLUSTERED ([Id] ASC)
);

