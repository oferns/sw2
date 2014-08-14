CREATE TABLE [dbo].[TwoFactorAccountOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_AccountTwoFactorOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_AccountTwoFactorOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

