CREATE TABLE [dbo].[Roles] (
    [Id]          TINYINT             NOT NULL,
    [Name]        [dbo].[ShortString] NOT NULL,
    [Description] [dbo].[LongString]  NOT NULL,
    [Active]      BIT                 NOT NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([Id] ASC)
);
















GO
