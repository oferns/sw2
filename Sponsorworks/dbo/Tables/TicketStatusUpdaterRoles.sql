CREATE TABLE [dbo].[TicketStatusUpdaterRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_TicketStatusUpdaterRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_TicketStatusUpdaterRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

