CREATE TABLE [dbo].[Fields] (
    [FieldType]   [dbo].[ShortString] NOT NULL,
    [OwnerRoleId] TINYINT             NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER    NOT NULL,
    CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED ([FieldType] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC)
);

