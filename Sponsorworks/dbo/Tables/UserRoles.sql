CREATE TABLE [dbo].[RoleMembers] (
    [RoleId] TINYINT          NOT NULL,
    [UserId] UNIQUEIDENTIFIER NOT NULL,
    [Active] BIT              NOT NULL,
    CONSTRAINT [PK_UserRole] PRIMARY KEY NONCLUSTERED ([RoleId] ASC, [UserId] ASC),
    CONSTRAINT [FK_UserRole_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]),
    CONSTRAINT [FK_UserRole_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);


GO
CREATE CLUSTERED INDEX [CIX_UserRole]
    ON [dbo].[RoleMembers]([RoleId] ASC);

