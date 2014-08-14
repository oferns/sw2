CREATE TABLE [dbo].[TwoFactorAccountOwners] (
    [OwnerRoleId]  TINYINT          NOT NULL,
    [OwnerUserId]  UNIQUEIDENTIFIER NOT NULL,
    [TargetRoleId] TINYINT          NOT NULL,
    CONSTRAINT [PK_TwoFactorAccountOwners] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC, [OwnerUserId] ASC, [TargetRoleId] ASC),
    CONSTRAINT [FK_TwoFactorAccountOwners_AccountOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[AccountOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_TwoFactorAccountOwners_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId]),
    CONSTRAINT [FK_TwoFactorAccountOwners_TwoFactorAccountOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[TwoFactorAccountOwnerRoles] ([RoleId])
);

