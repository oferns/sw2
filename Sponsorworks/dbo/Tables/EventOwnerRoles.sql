CREATE TABLE [dbo].[EventOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_EventOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_EventOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

