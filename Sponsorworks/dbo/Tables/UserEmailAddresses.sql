CREATE TABLE [dbo].[UserEmailAddresses] (
    [emailAddress] [dbo].[ShortString] NOT NULL,
    [OwnerRoleId]  TINYINT             NOT NULL,
    [OwnerUserId]  UNIQUEIDENTIFIER    NOT NULL,
    [Confirmed]    BIT                 NOT NULL,
    CONSTRAINT [PK_UserEmailAddresses] PRIMARY KEY CLUSTERED ([emailAddress] ASC),
    CONSTRAINT [FK_UserEmailAddresses_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

