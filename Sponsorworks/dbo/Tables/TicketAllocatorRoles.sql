CREATE TABLE [dbo].[TicketAllocatorRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_TicketAllocatorRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_TicketAllocatorRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

