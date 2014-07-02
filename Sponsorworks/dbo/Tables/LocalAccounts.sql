CREATE TABLE [dbo].[LocalAccounts] (
    [Id]          UNIQUEIDENTIFIER CONSTRAINT [DF__LocalAccount__Id__6D0D32F4] DEFAULT (newid()) NOT NULL,
    [OwnerRoleId] TINYINT          NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [Password]    NVARCHAR (200)   NOT NULL,
    [Active]      BIT              NOT NULL,
    CONSTRAINT [PK_LocalAccount] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LocalAccount_LocalAccountRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[LocalAccountOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_LocalAccount_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);





