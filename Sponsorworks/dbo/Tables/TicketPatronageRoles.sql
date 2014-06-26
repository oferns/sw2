CREATE TABLE [dbo].[TicketPatronageRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_TicketPatronageRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_TicketPatronageRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

