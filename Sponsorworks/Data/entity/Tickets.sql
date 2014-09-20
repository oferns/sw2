SET IDENTITY_INSERT dbo.Tickets ON

INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (1,'Standard')
INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (2,'Premium')
INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (3,'VIP')
INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (4,'Child')
INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (5,'Standing only')
INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (6,'Season')

SET IDENTITY_INSERT dbo.Tickets OFF


INSERT [dbo].[TicketOwners] VALUES 
(1, 5, @StandardCharteredId) -- Standard / Standard Chartered
, (1, 5, @SynergyId) -- Standard / Synergy
, (2, 5, @StandardCharteredId) -- Premium / Standard Chartered
, (2, 5, @SynergyId) -- Premium / Synergy
, (3, 5, @StandardCharteredId) -- Standard / Standard Chartered
, (3, 5, @SynergyId) -- Standard / Capital One