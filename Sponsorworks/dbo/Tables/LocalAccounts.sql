CREATE TABLE [dbo].[Accounts] (
    [EmailAddress]  [dbo].[ShortString] CONSTRAINT [DF__Account__Id__6D0D32F4] DEFAULT (newid()) NOT NULL,
    [OwnerRoleId]   TINYINT             NOT NULL,
    [OwnerUserId]   UNIQUEIDENTIFIER    NOT NULL,
    [PasswordHash]  NVARCHAR (200)      NOT NULL,
    [EmailVerified] BIT                 NOT NULL,
    [SecurityStamp] VARCHAR (250)       NOT NULL,
    [Active]        BIT                 NOT NULL,
    CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED ([OwnerRoleId] ASC, [OwnerUserId] ASC),
    CONSTRAINT [CK_Account_EmailAddresses] CHECK (datalength([EmailAddress])=datalength(rtrim(ltrim([EmailAddress])))),
    CONSTRAINT [FK_Account_AccountRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[AccountOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_Account_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);
















GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Accounts]
    ON [dbo].[Accounts]([EmailAddress] ASC);



