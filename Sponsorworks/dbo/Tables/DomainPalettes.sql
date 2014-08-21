CREATE TABLE [dbo].[DomainPalettes] (
    [DomainId]    INT                 NOT NULL,
    [PaletteType] [dbo].[ShortString] NOT NULL,
    [ColourCode]  VARCHAR (7)         NOT NULL,
    CONSTRAINT [PK_DomainPalettes] PRIMARY KEY CLUSTERED ([DomainId] ASC, [PaletteType] ASC)
);

