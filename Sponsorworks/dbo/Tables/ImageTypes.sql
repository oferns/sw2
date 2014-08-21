CREATE TABLE [dbo].[ImageTypes] (
    [Type]        [dbo].[ShortString] NOT NULL,
    [DisplayName] [dbo].[ShortString] NOT NULL,
    CONSTRAINT [PK_ImageTypes_1] PRIMARY KEY CLUSTERED ([Type] ASC)
);

