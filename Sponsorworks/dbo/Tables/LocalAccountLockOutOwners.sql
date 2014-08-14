CREATE TABLE [dbo].[AccountLockOutOwners] (
    [OwnerRoleId]    TINYINT          NOT NULL,
    [OwnerUserId]    UNIQUEIDENTIFIER NOT NULL,
    [SubjectRoleId]  TINYINT          NOT NULL,
    [MaxFailedCount] TINYINT          NOT NULL,
    [LockOutPeriod]  TIME (7)         NOT NULL,
    CONSTRAINT [PK_AccountLockOutOwners] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC, [OwnerUserId] ASC, [SubjectRoleId] ASC),
    CONSTRAINT [FK_AccountLockOutOwners_AccountLockOutOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[AccountLockOutOwnerRoles] ([OwnerRoleId]),
    CONSTRAINT [FK_AccountLockOutOwners_AccountOwnerRoles] FOREIGN KEY ([SubjectRoleId]) REFERENCES [dbo].[AccountOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_AccountLockOutOwners_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

