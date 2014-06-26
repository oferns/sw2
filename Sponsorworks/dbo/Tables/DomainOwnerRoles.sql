CREATE TABLE [dbo].[DomainOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_DomainOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_DomainOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

