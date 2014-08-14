CREATE TABLE [dbo].[AccountTwoFactorOwners] (
    [OwnerRoleId]  TINYINT          NOT NULL,
    [OwnerUserId]  UNIQUEIDENTIFIER NOT NULL,
    [TargetRoleId] TINYINT          NOT NULL,
    CONSTRAINT [PK_AccountTwoFactorOwners] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC, [OwnerUserId] ASC, [TargetRoleId] ASC),
    CONSTRAINT [FK_AccountTwoFactorOwners_AccountTwoFactorOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[TwoFactorAccountOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_AccountTwoFactorOwners_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

