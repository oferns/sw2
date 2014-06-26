CREATE TABLE [dbo].[FieldOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_FieldOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_FieldOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

