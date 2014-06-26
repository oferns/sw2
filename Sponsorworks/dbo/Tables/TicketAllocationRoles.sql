CREATE TABLE [dbo].[TicketAllocationRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_TicketAllocationRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_TicketAllocationRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

