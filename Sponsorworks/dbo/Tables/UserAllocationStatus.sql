CREATE TABLE [dbo].[UserAllocationStatus] (
    [OwnerRoleId]        TINYINT          NOT NULL,
    [OwnerUserId]        UNIQUEIDENTIFIER NOT NULL,
    [AllocationStatusId] INT              NOT NULL,
    CONSTRAINT [PK_UserAllocationStatus] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC, [OwnerUserId] ASC, [AllocationStatusId] ASC),
    CONSTRAINT [FK_UserAllocationStatus_UserAllocationStatusOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[UserAllocationStatusOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_UserAllocationStatus_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

