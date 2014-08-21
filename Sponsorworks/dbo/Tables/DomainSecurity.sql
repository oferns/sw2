CREATE TABLE [dbo].[DomainSecurity] (
    [DomainId]                   INT NOT NULL,
	[CookieName]				dbo.ShortString NOT NULL,
    [AbsoluteExpirationInHours]  INT NOT NULL,
    [SlidingExpirationInMinutes] INT NOT NULL,
    [AllowPerpetualLogin]        BIT NOT NULL,
    CONSTRAINT [PK_DomainSettings] PRIMARY KEY CLUSTERED ([DomainId] ASC),
    CONSTRAINT [FK_DomainSettings_Domains] FOREIGN KEY ([DomainId]) REFERENCES [dbo].[Domains] ([Id])
);

