CREATE TABLE [dbo].[DivisionMembers] (
    [Id]                   INT              IDENTITY (1, 1) NOT NULL,
    [DivisionId]           INT              NOT NULL,
    [MemberRoleId]         TINYINT          NOT NULL,
    [MemberUserId]         UNIQUEIDENTIFIER NOT NULL,
    [DivisionOwnerRoleId]  TINYINT          NOT NULL,
    [DivisionOwnnerUserId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_DivisionMembers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DivisionMembers_Divisions] FOREIGN KEY ([DivisionId], [DivisionOwnerRoleId], [DivisionOwnnerUserId]) REFERENCES [dbo].[Divisions] ([Id], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_DivisionMembers_MemberRelationships] FOREIGN KEY ([DivisionOwnerRoleId], [DivisionOwnnerUserId], [MemberRoleId], [MemberUserId]) REFERENCES [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId])
);

