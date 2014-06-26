CREATE TABLE [dbo].[EventFields] (
    [EventId]     INT                 NOT NULL,
    [OwnerRoleId] TINYINT             NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER    NOT NULL,
    [FieldType]   [dbo].[ShortString] NOT NULL,
    CONSTRAINT [PK_EventFields] PRIMARY KEY CLUSTERED ([EventId] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC, [FieldType] ASC),
    CONSTRAINT [FK_EventFields_Events] FOREIGN KEY ([EventId], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[Events] ([Id], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_EventFields_Fields] FOREIGN KEY ([FieldType], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[Fields] ([FieldType], [OwnerRoleId], [OwnerUserId])
);

