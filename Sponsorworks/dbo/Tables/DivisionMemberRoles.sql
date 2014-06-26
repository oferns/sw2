CREATE TABLE [dbo].[DivisionMemberRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_DivisionMemberRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_DivisionMemberRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

