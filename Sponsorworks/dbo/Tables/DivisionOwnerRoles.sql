CREATE TABLE [dbo].[DivisionOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_DivisionOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_DivisionOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

