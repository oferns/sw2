CREATE TABLE [dbo].[DomainSettings] (
    [Id]                         INT             IDENTITY (1, 1) NOT NULL,
    [Name]                       VARCHAR (32)     NOT NULL,
    [DomainId]                   INT              NOT NULL,
    [OwnerRoleId]                TINYINT          NOT NULL,
    [OwnerUserId]                UNIQUEIDENTIFIER NOT NULL,
    [AbsoluteExpirationInHours]  INT              NOT NULL,
    [SlidingExpirationInMinutes] INT              NOT NULL,
    [AllowPerpetualLogin]        BIT              NOT NULL,
    CONSTRAINT [PK_SecuritySettings] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DomainSettings_Domains] FOREIGN KEY ([DomainId], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[Domains] ([Id], [OwnerRoleId], [OwnerUserId])
);

