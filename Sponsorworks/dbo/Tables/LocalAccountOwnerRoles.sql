CREATE TABLE [dbo].[AccountOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_AccountRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_AccountRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

