CREATE TABLE [dbo].[LocalAccounts] (
    [Id]          UNIQUEIDENTIFIER  DEFAULT (newid()) NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [OwnerRoleId] TINYINT          NOT NULL,
    [Password]    NVARCHAR (200)   NOT NULL,
    [Active]      BIT              NOT NULL,
    CONSTRAINT [PK_LocalAccount] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LocalAccount_LocalAccountRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[LocalAccountRoles] ([RoleId]),
    CONSTRAINT [FK_LocalAccount_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);



