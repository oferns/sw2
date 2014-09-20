
SET IDENTITY_INSERT [dbo].[Domains] ON

INSERT [dbo].[Domains] ([Id], [Domain], [Subdomain], [TopLevelDomain], [OwnerRoleId], [OwnerUserId]) VALUES
 (1, N'localhost','', '', 1, @SysadminId)
, (2, N'sponsorworks','www', '.co.uk', 1, @SysadminId)
, (3, N'standardlifeinvestments','events','.com', 5, @StandardLifeId)
, (4, N'standardcharteredtrophy','www','.com', 5, @StandardCharteredId)
, (5, N'lfchospitality','www','.com', 5, @LiverpoolId)

SET IDENTITY_INSERT [dbo].[Domains] OFF


/* add some domain settings to demonstrate individual cookie security settings */
INSERT [dbo].[DomainSecurity] ([DomainId], [CookieName], [AbsoluteExpirationInHours], [SlidingExpirationInMinutes], [AllowPerpetualLogin]) VALUES 
(1, 'LOCALAUTH', -1,20,1)
,(2,'SWORKSAUTH',24,20,1)
,(3, 'SLIAUTH',1,20,0)
,(4,'SCBAUTH',1,20,0)
,(5,'LFCAUTH',1,20,0)
