CREATE TABLE [dbo].[Resources] (
    [Id]             INT                 IDENTITY (1, 1) NOT NULL,
    [ResourceTypeId] TINYINT             NOT NULL,
    [Name]           [dbo].[ShortString] NOT NULL,
    [DisplayName]    [dbo].[ShortString] NOT NULL,
    [DefaultValue]   [dbo].[LongString]  NOT NULL,
    CONSTRAINT [PK_Resources] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Resources_ResourceTypes] FOREIGN KEY ([ResourceTypeId]) REFERENCES [dbo].[ResourceTypes] ([Id])
);





