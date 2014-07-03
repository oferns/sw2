CREATE TABLE [dbo].[ExternalAccountProviders] (
    [Name]        [dbo].[ShortString] NOT NULL,
    [Description] [dbo].[LongString]  NOT NULL,
    [Active]      BIT                 NOT NULL,
    CONSTRAINT [PK_ExternalAccountProviders] PRIMARY KEY CLUSTERED ([Name] ASC)
);



