CREATE TABLE [dbo].[TicketOwners] (
    [TicketId]    INT              NOT NULL,
    [OwnerRoleId] TINYINT          NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_TicketOwners] PRIMARY KEY CLUSTERED ([TicketId] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC),
    CONSTRAINT [FK_TicketOwners_TicketOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[TicketOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_TicketOwners_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

