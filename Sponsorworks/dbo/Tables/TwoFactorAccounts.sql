CREATE TABLE [dbo].[TwoFactorAccounts] (
    [OwnerRoleId]          TINYINT          NOT NULL,
    [OwnerUserId]          UNIQUEIDENTIFIER NOT NULL,
    [TwoFactorOwnerRoleId] TINYINT          NOT NULL,
    [TwoFactorOwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_TwoFactorAccounts] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC, [OwnerUserId] ASC, [TwoFactorOwnerRoleId] ASC, [TwoFactorOwnerUserId] ASC),
    CONSTRAINT [FK_TwoFactorAccounts_Accounts] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[Accounts] ([OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_TwoFactorAccounts_TwoFactorAccountOwners] FOREIGN KEY ([TwoFactorOwnerRoleId], [TwoFactorOwnerUserId], [OwnerRoleId]) REFERENCES [dbo].[TwoFactorAccountOwners] ([OwnerRoleId], [OwnerUserId], [TargetRoleId])
);

