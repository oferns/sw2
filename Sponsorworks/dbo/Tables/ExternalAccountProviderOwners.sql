CREATE TABLE [dbo].[ExternalAccountProviderOwners] (
    [AccountProviderName] [dbo].[ShortString] NOT NULL,
    [OwnerRoleId]         TINYINT             NOT NULL,
    [OwnerUserId]         UNIQUEIDENTIFIER    NOT NULL,
    [Active]              BIT                 NOT NULL,
    CONSTRAINT [PK_ExternalAccountProviderOwners_1] PRIMARY KEY CLUSTERED ([AccountProviderName] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC),
    CONSTRAINT [FK_ExternalAccountProviderOwners_ExternalAccountProviderOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[ExternalAccountProviderOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_ExternalAccountProviderOwners_ExternalAccountProviders] FOREIGN KEY ([AccountProviderName]) REFERENCES [dbo].[ExternalAccountProviders] ([Name]),
    CONSTRAINT [FK_ExternalAccountProviderOwners_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

