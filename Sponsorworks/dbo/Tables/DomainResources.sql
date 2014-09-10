CREATE TABLE [dbo].[DomainResources] (
    [Id]          INT              NOT NULL,
    [DomainId]    INT              NOT NULL,
    [ResourceId]  INT              NOT NULL,
    [Value]       NVARCHAR (MAX)   NOT NULL,
    [OwnerRoleId] TINYINT          NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [StartDate]   DATETIME         NULL,
    [EndDate]     DATETIME         NULL,
    CONSTRAINT [PK_DomainResources] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DomainResources_Domains] FOREIGN KEY ([Id], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[Domains] ([Id], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_DomainResources_OwnedResources] FOREIGN KEY ([ResourceId], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[OwnedResources] ([ResourceId], [OwnerRoleId], [OwnerUserId])
);

