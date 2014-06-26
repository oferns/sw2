CREATE TABLE [dbo].[EventFieldValues] (
    [EventId]          INT                 NOT NULL,
    [EventOwnerRoleId] TINYINT             NOT NULL,
    [EventOwnerUserId] UNIQUEIDENTIFIER    NOT NULL,
    [FieldType]        [dbo].[ShortString] NOT NULL,
    [SubmittingRoleId] TINYINT             NOT NULL,
    [SubmittingUserId] UNIQUEIDENTIFIER    NOT NULL,
    [Value]            VARBINARY (MAX)     NOT NULL,
    CONSTRAINT [PK_EventFieldValues] PRIMARY KEY CLUSTERED ([EventId] ASC, [FieldType] ASC, [SubmittingRoleId] ASC, [SubmittingUserId] ASC),
    CONSTRAINT [FK_EventFieldValues_Events] FOREIGN KEY ([EventId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[Events] ([Id], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_EventFieldValues_Fields] FOREIGN KEY ([FieldType], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[Fields] ([FieldType], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_EventFieldValues_UserRelationships] FOREIGN KEY ([EventOwnerRoleId], [EventOwnerUserId], [SubmittingRoleId], [SubmittingUserId]) REFERENCES [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId])
);

