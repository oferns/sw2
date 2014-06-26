CREATE TABLE [dbo].[TicketRequestorRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_TicketRequestRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_TicketRequestRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

