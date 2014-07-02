CREATE TABLE [dbo].[ExternalAccountOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    [Active] BIT     NOT NULL,
    CONSTRAINT [PK_ExternalAccountOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_ExternalAccountOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);



