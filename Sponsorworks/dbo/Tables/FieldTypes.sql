CREATE TABLE [dbo].[FieldTypes] (
    [Type]        [dbo].[ShortString] NOT NULL,
    [DisplayName] [dbo].[ShortString] NOT NULL,
    CONSTRAINT [PK_FieldTypes] PRIMARY KEY CLUSTERED ([Type] ASC)
);

