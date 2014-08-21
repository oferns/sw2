CREATE TABLE [dbo].[DomainImages] (
    [DomainId]  INT                 NOT NULL,
    [ImageType] [dbo].[ShortString] NOT NULL,
    [ImageUrl]  [dbo].[ShortString] NOT NULL,
    [AltText]   [dbo].[ShortString] NOT NULL,
    CONSTRAINT [PK_DomainImages] PRIMARY KEY CLUSTERED ([DomainId] ASC, [ImageType] ASC),
    CONSTRAINT [FK_DomainImages_ImageTypes] FOREIGN KEY ([ImageType]) REFERENCES [dbo].[ImageTypes] ([Type])
);

