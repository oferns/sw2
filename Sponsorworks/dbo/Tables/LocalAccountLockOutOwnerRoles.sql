CREATE TABLE [dbo].[AccountLockOutOwnerRoles] (
    [OwnerRoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_AccountLockOutOwnerRoles] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC),
    CONSTRAINT [FK_AccountLockOutOwnerRoles_AccountLockOutOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[Roles] ([Id])
);

