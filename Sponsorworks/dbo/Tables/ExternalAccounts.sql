CREATE TABLE [dbo].[ExternalAccounts] (
    [Id]                  UNIQUEIDENTIFIER    NOT NULL,
    [ProviderName]        [dbo].[ShortString] NOT NULL,
    [ProviderOwnerRoleId] TINYINT             NOT NULL,
    [ProviderOwnerUserId] UNIQUEIDENTIFIER    NOT NULL,
    [OwnerRoleId]         TINYINT             NOT NULL,
    [OwnerUserId]         UNIQUEIDENTIFIER    NOT NULL,
    [ProviderKey]         [dbo].[ShortString] NOT NULL,
    [Active]              BIT                 NOT NULL,
    CONSTRAINT [PK_ExternalAccounts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ExternalAccounts_ExternalAccountOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[ExternalAccountOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_ExternalAccounts_ExternalAccountProviderOwners] FOREIGN KEY ([ProviderName], [ProviderOwnerRoleId], [ProviderOwnerUserId]) REFERENCES [dbo].[ExternalAccountProviderOwners] ([AccountProviderName], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_ExternalAccounts_UserRelationships] FOREIGN KEY ([ProviderOwnerRoleId], [ProviderOwnerUserId], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId])
);





