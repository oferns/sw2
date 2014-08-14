CREATE TABLE [dbo].[AccountLockOuts] (
    [OwnerRoleId]        TINYINT          NOT NULL,
    [OwnerUserId]        UNIQUEIDENTIFIER NOT NULL,
    [LockOutOwnerRoleId] TINYINT          NOT NULL,
    [LockOutOwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [FailedAccessCount]  TINYINT          NOT NULL,
    [UnlockDate]         DATETIME         NULL,
    CONSTRAINT [PK_AccountLockOuts] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC, [OwnerUserId] ASC, [LockOutOwnerRoleId] ASC, [LockOutOwnerUserId] ASC),
    CONSTRAINT [FK_AccountLockOuts_AccountLockOutOwners] FOREIGN KEY ([LockOutOwnerRoleId], [LockOutOwnerUserId], [OwnerRoleId]) REFERENCES [dbo].[AccountLockOutOwners] ([OwnerRoleId], [OwnerUserId], [SubjectRoleId]),
    CONSTRAINT [FK_AccountLockOuts_Accounts] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[Accounts] ([OwnerRoleId], [OwnerUserId])
);





