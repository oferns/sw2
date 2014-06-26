CREATE TABLE [dbo].[TicketOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_TicketOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_TicketOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

