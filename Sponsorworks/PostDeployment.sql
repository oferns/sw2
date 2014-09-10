/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/* Set up the System Roles 
	sysadmin, reseller, admin, guest, company, user
*/
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (1, N'sysadmin', N'System-wide administrator', 1)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (2, N'reseller', N'Reseller account. Local login. Limited Federated access', 1)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (3, N'admin', N'Tenant Administrator. Needs Local Account to operate. Think Company Administrator.', 1)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (4, N'guest', N'Guest role. No Local Account needed. Federated Identity allowed. ', 1)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (5, N'company', N' A company account. No Login', 1)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (6, N'user', N'A basic user role', 1)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (7, N'group', N'A group of guests', 1)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES (8, N'division', N'A user division', 1)

/* Set up the System Role Relationships 
*/
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (2, 3) -- reseller->admin
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (2, 5) -- reseller->company
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (2, 6) -- reseller->user
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (2, 8) -- reseller->division
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (5, 7) -- company->group
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (5, 3) -- company->admin
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (5, 4) -- company->guest
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (5, 6) -- company->user
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (5, 8) -- company->division
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (8, 8) -- division->division
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (8, 6) -- divsion->user
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES (7, 4) -- group-> guest


/* Add roles to the restriction tables. Only users in these roles will be able to be added to the relevant tables */ 
INSERT [dbo].[DomainOwnerRoles] ([RoleId]) VALUES (1) --  sysadmin - Restricts who can own a Domain
INSERT [dbo].[DomainOwnerRoles] ([RoleId]) VALUES (2) --  reseller - Restricts who can own a Domain
INSERT [dbo].[DomainOwnerRoles] ([RoleId]) VALUES (5) --  company - Restricts who can own a Domain

INSERT [dbo].[TicketRequestorRoles] ([RoleId]) VALUES (3) -- admin - Restricts who can request Tickets
INSERT [dbo].[TicketRequestorRoles] ([RoleId]) VALUES (6) -- user - Restricts who can request Tickets

INSERT [dbo].[AccountOwnerRoles] ([RoleId]) VALUES (1) -- sysadmin - Restricts who can have a local account to login with
INSERT [dbo].[AccountOwnerRoles] ([RoleId]) VALUES (3) -- admin - Restricts who can have a local account to login with
INSERT [dbo].[AccountOwnerRoles] ([RoleId]) VALUES (6) -- user - Restricts who can have a local account to login with

INSERT [dbo].[ExternalAccountOwnerRoles] ([RoleId], [Active]) VALUES (3,1) -- admin - Restricts who can have a External account to login with
INSERT [dbo].[ExternalAccountOwnerRoles] ([RoleId], [Active]) VALUES (4,1) -- guest - Restricts who can have a External account to login with
INSERT [dbo].[ExternalAccountOwnerRoles] ([RoleId], [Active]) VALUES (6,1) -- user - Restricts who can have a External account to login with

INSERT [dbo].[EventOwnerRoles] ([RoleId]) VALUES (5) -- company - Restricts who can own an event

INSERT [dbo].[TicketPatronageRoles] ([RoleId]) VALUES (4) -- guest - Restricts who can be invited to an Event
INSERT [dbo].[TicketPatronageRoles] ([RoleId]) VALUES (7) -- group - Restricts who can be invited to an Event

INSERT [dbo].[ResourceOwnerRoles] ([RoleId]) VALUES (2) -- reseller - Restricts who can own a resource Override
INSERT [dbo].[ResourceOwnerRoles] ([RoleId]) VALUES (5) -- company - Restricts who can own a resource Override

INSERT [dbo].[TicketAllocationRoles] ([RoleId]) VALUES (3) -- admin - Restricts who can allocate tickets

INSERT [dbo].[FieldOwnerRoles] ([RoleId]) VALUES (2) -- reseller - Restricts who can own fields
INSERT [dbo].[FieldOwnerRoles] ([RoleId]) VALUES (5) -- company - Restricts who can own fields

INSERT [dbo].[TicketOwnerRoles] ([RoleId]) VALUES (5) -- company - Restricts who can own tickets

INSERT [dbo].[VenueOwnerRoles] ([RoleId]) VALUES (5) -- company - - Restricts who can own Venues

/* Set up some users. and their roles and their relations*/
/* sysadmins 1 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'f50613a5-f898-4825-96a1-889655f651b8', N'Sysadmin', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (1, N'f50613a5-f898-4825-96a1-889655f651b8', 1) 

/* resellers 2 */
/*5d415835-a304-45ae-b979-5f0eca28d261 - Synergy */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'5d415835-a304-45ae-b979-5f0eca28d261', N'Synergy', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (2, N'5d415835-a304-45ae-b979-5f0eca28d261', 1) 

/* admins  3 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'ce82f51a-7c53-490b-9d40-317aec1c9f35', N'Brian Murphy', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (3, N'ce82f51a-7c53-490b-9d40-317aec1c9f35', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active]) 
	VALUES (2, N'5d415835-a304-45ae-b979-5f0eca28d261', 3, N'ce82f51a-7c53-490b-9d40-317aec1c9f35',1)

/* Users 6 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'6F071C0F-9214-4AD8-9284-A7937F2BD2CE', N'Tom Simpson', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (6, N'6F071C0F-9214-4AD8-9284-A7937F2BD2CE', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active]) 
	VALUES (2, N'5d415835-a304-45ae-b979-5f0eca28d261', 6, N'6F071C0F-9214-4AD8-9284-A7937F2BD2CE',1)

/* 9F4E742A-F8B0-4B99-A2A5-B239E3DF3DB5 Another Reseller */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'9F4E742A-F8B0-4B99-A2A5-B239E3DF3DB5', N'Another Reseller', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (2, N'9F4E742A-F8B0-4B99-A2A5-B239E3DF3DB5', 1) 

/* admins  3*/
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'B54A953F-C690-48DE-80D0-1027B3E476CF', N'Micheal Bradbury', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (3, N'B54A953F-C690-48DE-80D0-1027B3E476CF', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active])  
	VALUES (2, N'9F4E742A-F8B0-4B99-A2A5-B239E3DF3DB5', 3, N'B54A953F-C690-48DE-80D0-1027B3E476CF',1)


/* Users 6 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'92EBEC9B-A5BC-4920-8478-A326877D8E8B', N'Mauroune Fellani', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (6, N'92EBEC9B-A5BC-4920-8478-A326877D8E8B', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active])  
	VALUES (2, N'9F4E742A-F8B0-4B99-A2A5-B239E3DF3DB5', 6, N'92EBEC9B-A5BC-4920-8478-A326877D8E8B',1)


/* companies 5 */
/* 6ece2d4b-508c-47c6-847f-fe355608a452 Standard Chartered */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'6ece2d4b-508c-47c6-847f-fe355608a452', N'Standard Chartered', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (5, N'6ece2d4b-508c-47c6-847f-fe355608a452', 1) 

/* admins */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'6CF68DE6-9321-4817-9F9A-236ABD203F47', N'Romelu Lukaku', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (3, N'6CF68DE6-9321-4817-9F9A-236ABD203F47', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active])  
	VALUES (5, N'6ece2d4b-508c-47c6-847f-fe355608a452', 3, N'6CF68DE6-9321-4817-9F9A-236ABD203F47',1)

/* Users 6 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'AC40F01E-4CE2-4124-B676-11261C3970D6', N'Eden Hazard', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (6, N'AC40F01E-4CE2-4124-B676-11261C3970D6', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active])  
	VALUES (5, N'6ece2d4b-508c-47c6-847f-fe355608a452', 6, N'AC40F01E-4CE2-4124-B676-11261C3970D6',1)


/* 5d415835-a304-45ae-b979-5f0eca28d261', N'Synergy */
--INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'5d415835-a304-45ae-b979-5f0eca28d261', N'Capital One', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (5, N'5d415835-a304-45ae-b979-5f0eca28d261', 1) 

/* admins */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'E860B6EE-89B0-44A2-BCD3-0C4BEF5FBADD', N'Claire Conner', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (3, N'E860B6EE-89B0-44A2-BCD3-0C4BEF5FBADD', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active]) 
	VALUES (5, N'5d415835-a304-45ae-b979-5f0eca28d261', 3, N'E860B6EE-89B0-44A2-BCD3-0C4BEF5FBADD',1)

/* Users 6 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'4345E42B-34AF-4BB5-A5EE-1D7E4AACD507', N'Susan Taylor', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (6, N'4345E42B-34AF-4BB5-A5EE-1D7E4AACD507', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active]) 
	VALUES (5, N'5d415835-a304-45ae-b979-5f0eca28d261', 6, N'4345E42B-34AF-4BB5-A5EE-1D7E4AACD507',1)


/*	24D14D4E-DEA4-4ED3-A30A-412DFBDF854D', N'Liverpool FC */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'24D14D4E-DEA4-4ED3-A30A-412DFBDF854D', N'Liverpool FC', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (5, N'24D14D4E-DEA4-4ED3-A30A-412DFBDF854D', 1) 

/* admins 3 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'09F4F1C0-0F15-4C6C-8C4E-31A6C6B628A8', N'Si Yun-ki', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (3, N'09F4F1C0-0F15-4C6C-8C4E-31A6C6B628A8', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active])  
	VALUES (5, N'24D14D4E-DEA4-4ED3-A30A-412DFBDF854D', 3, N'09F4F1C0-0F15-4C6C-8C4E-31A6C6B628A8',1)

/* Users 6 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'36B0BEFA-E494-4528-BEC9-A0B5F5EFE874', N'Ben Price', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (6, N'36B0BEFA-E494-4528-BEC9-A0B5F5EFE874', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active])  
	VALUES (5, N'24D14D4E-DEA4-4ED3-A30A-412DFBDF854D', 6, N'36B0BEFA-E494-4528-BEC9-A0B5F5EFE874',1)

/* BD2D40AB-26F8-4CF9-9F1C-6633EFD1CEBF', N'Standard Life Investments' */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'BD2D40AB-26F8-4CF9-9F1C-6633EFD1CEBF', N'Standard Life Investments', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (5, N'BD2D40AB-26F8-4CF9-9F1C-6633EFD1CEBF', 1) 

/* admins */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'9A3F1B8E-0E70-42BB-8DE7-A8D63BCD057D', N'Katy Watkin', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (3, N'9A3F1B8E-0E70-42BB-8DE7-A8D63BCD057D', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active]) 
	VALUES (5, N'BD2D40AB-26F8-4CF9-9F1C-6633EFD1CEBF', 3, N'9A3F1B8E-0E70-42BB-8DE7-A8D63BCD057D',1)

/* Users 6 */
INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'3917CA7E-C4AF-4415-8F0C-BBD7A206259D', N'Andrea Mercer', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (6, N'3917CA7E-C4AF-4415-8F0C-BBD7A206259D', 1) 
INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active]) 
	VALUES (5, N'BD2D40AB-26F8-4CF9-9F1C-6633EFD1CEBF', 6, N'3917CA7E-C4AF-4415-8F0C-BBD7A206259D', 1)

INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'768DF950-0EA6-40A9-AFAA-7CF1052B6669', N'Acme Ltd', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (5, N'768DF950-0EA6-40A9-AFAA-7CF1052B6669', 1) 

INSERT [dbo].[Users] ([Id], [UserName], [Active]) VALUES (N'512CC3D5-D6E3-4CA7-AAD2-9E80A5B31008', N'Wayne Industries', 1)
INSERT [dbo].[RoleMembers] ([RoleId], [UserId], [Active]) VALUES (5, N'512CC3D5-D6E3-4CA7-AAD2-9E80A5B31008', 1) 


/* Create some domains and give them a role/user combination

*/ 
SET IDENTITY_INSERT [dbo].[Domains] ON

INSERT [dbo].[Domains] ([Id], [Domain], [Subdomain], [TopLevelDomain], [OwnerRoleId], [OwnerUserId]) VALUES (1, N'localhost','', '', 1, N'f50613a5-f898-4825-96a1-889655f651b8')
INSERT [dbo].[Domains] ([Id], [Domain], [Subdomain], [TopLevelDomain], [OwnerRoleId], [OwnerUserId]) VALUES (2, N'sponsorworks','www', '.co.uk', 1, N'f50613a5-f898-4825-96a1-889655f651b8')
INSERT [dbo].[Domains] ([Id], [Domain], [Subdomain], [TopLevelDomain], [OwnerRoleId], [OwnerUserId]) VALUES (3, N'standardlifeinvestments','events','.com', 5, N'BD2D40AB-26F8-4CF9-9F1C-6633EFD1CEBF')
INSERT [dbo].[Domains] ([Id], [Domain], [Subdomain], [TopLevelDomain], [OwnerRoleId], [OwnerUserId]) VALUES (4, N'standardcharteredtrophy','www','.com', 2, N'5d415835-a304-45ae-b979-5f0eca28d261')

SET IDENTITY_INSERT [dbo].[Domains] OFF

/* Add some base AllocationStatus values */
INSERT [dbo].[AllocationStatus] ([Name], [Description]) VALUES (N'Pending', 'Pending')
INSERT [dbo].[AllocationStatus] ([Name], [Description]) VALUES  (N'Approved', 'Approved')
INSERT [dbo].[AllocationStatus] ([Name], [Description]) VALUES (N'Rejected', 'Rejected')
INSERT [dbo].[AllocationStatus] ([Name], [Description]) VALUES (N'Expired', 'Expired')
INSERT [dbo].[AllocationStatus] ([Name], [Description]) VALUES (N'Deleted', 'Deleted')
INSERT [dbo].[AllocationStatus] ([Name], [Description]) VALUES (N'Cancelled', 'Cancelled')

/* add some domain settings to demonstrate individual cookie security settings */
INSERT [dbo].[DomainSecurity] ([DomainId], [CookieName], [AbsoluteExpirationInHours], [SlidingExpirationInMinutes], [AllowPerpetualLogin]) VALUES (1, 'LOCALAUTH', -1,20,1)
INSERT [dbo].[DomainSecurity] ([DomainId], [CookieName], [AbsoluteExpirationInHours], [SlidingExpirationInMinutes], [AllowPerpetualLogin]) VALUES (2,'SWORKSAUTH',24,20,1)
INSERT [dbo].[DomainSecurity] ([DomainId], [CookieName], [AbsoluteExpirationInHours], [SlidingExpirationInMinutes], [AllowPerpetualLogin]) VALUES (3, 'SLIAUTH',1,20,0)
INSERT [dbo].[DomainSecurity] ([DomainId], [CookieName], [AbsoluteExpirationInHours], [SlidingExpirationInMinutes], [AllowPerpetualLogin]) VALUES (4,'SCBAUTH',1,20,0)


/* Set up some events.
	One long-running event (EPL 14/15) with 
		two child events (Leicester v Everton, Liverpool v Southmpton)  Standard Chartered
	One Perpetual Event with 1 child event
	One one-off event with no children
	One open-ended event (no end date)
	One  
*/
SET IDENTITY_INSERT dbo.Events ON
/* long running event owned by Standard Chartered*/
INSERT [dbo].[Events] ([Id],[Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES (1,N'English Premier League (14/15)',5, N'6ece2d4b-508c-47c6-847f-fe355608a452',null,'2014-08-16 00:00:00','2015-05-24 23:59:00') -- Standard Chartered
INSERT [dbo].[Events] ([Id],[Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES (2,N'Leicester City v Everton',5, N'6ece2d4b-508c-47c6-847f-fe355608a452',1,'2014-08-16 15:00:00','2014-08-16 17:00:00') -- Standard Chartered
INSERT [dbo].[Events] ([Id],[Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES (3,N'Liverpool v Southampton',5, N'6ece2d4b-508c-47c6-847f-fe355608a452',1,'2014-08-16 15:00:00','2014-08-16 17:00:00') -- Standard Chartered

/* Perpetual Event with one time limited child Owned by Synergy */
INSERT [dbo].[Events] ([Id],[Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES (4,N'Synergy perpetual promotion',5, N'5d415835-a304-45ae-b979-5f0eca28d261',null,null,null) -- Synergy
INSERT [dbo].[Events] ([Id],[Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES (5,N'Synergy perpetual promotion Time-limited child perpetual event',5, N'5d415835-a304-45ae-b979-5f0eca28d261',4,'2014-08-01 19:00','2014-08-01 21:00') -- Synergy

/* One-off event no children Capital One */
INSERT [dbo].[Events] ([Id],[Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES (6,N'Capital One Day - a one-off event',5, N'5d415835-a304-45ae-b979-5f0eca28d261',null,'2014-08-01 19:00','2014-08-01 21:00') -- Capital One

/* One-off event no children Synergy */
INSERT [dbo].[Events] ([Id],[Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES (7,N'A one-off open-ended event',5, N'5d415835-a304-45ae-b979-5f0eca28d261',4,'2014-08-01 19:00','2014-08-01 21:00') -- Synergy

SET IDENTITY_INSERT dbo.Events OFF


/* Add some Ticket types to use
just three needed really to demo
*/
SET IDENTITY_INSERT dbo.Tickets ON

INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (1,'Standard')
INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (2,'Premium')
INSERT [dbo].[Tickets] ([Id],[Name]) VALUES (3,'VIP')

SET IDENTITY_INSERT dbo.Tickets OFF

/* Associate owners with ticket types (at the moment only companies can own ticket types because they are the only entry in TicketOwnerRoles) 
Standard Chartered have all 3, the other 2 have 2 each
*/
INSERT [dbo].[TicketOwners] VALUES (1, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452') -- Standard / Standard Chartered
INSERT [dbo].[TicketOwners] VALUES (1, 5, N'5d415835-a304-45ae-b979-5f0eca28d261') -- Standard / Synergy

INSERT [dbo].[TicketOwners] VALUES (2, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452') -- Premium / Standard Chartered
INSERT [dbo].[TicketOwners] VALUES (2, 5, N'5d415835-a304-45ae-b979-5f0eca28d261') -- Premium / Synergy

INSERT [dbo].[TicketOwners] VALUES (3, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452') -- Standard / Standard Chartered
INSERT [dbo].[TicketOwners] VALUES (3, 5, N'5d415835-a304-45ae-b979-5f0eca28d261') -- Standard / Capital One


/* Associate Events with ticket types/Allocation */
INSERT [dbo].[EventTickets] VALUES (2, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452',1,100) --Allocation of 100 Standard for Leics v Eve - Standard Chartered
INSERT [dbo].[EventTickets] VALUES (3, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452',1,50) -- Allocation of 50 Standard for Liv v Sou - Standard Chartered

INSERT [dbo].[EventTickets] VALUES (2, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452',2,25) -- Allocation of 25 Premium for Leics v Eve - Standard Chartered
INSERT [dbo].[EventTickets] VALUES (3, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452',2,15) -- Allocation of 50 Premium for Liv v Sou - Standard Chartered

INSERT [dbo].[EventTickets] VALUES (2, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452',3,10) -- Allocation of 10 VIP for Leics v Eve - Standard Chartered
INSERT [dbo].[EventTickets] VALUES (3, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452',3,15) -- Allocation of 15 VIP for Liv v Sou - Standard Chartered

INSERT [dbo].[EventTickets] VALUES (4, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',1,1000) -- Allocation of 1000 Standard tickets for perpetual promotion - Synergy
INSERT [dbo].[EventTickets] VALUES (4, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',2,500) -- Allocation of 500 Premium tickets for a perpetual event - Synergy

INSERT [dbo].[EventTickets] VALUES (5, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',1,100) -- Allocation of 100 Standard tickets for a perpetual event limited child event - Synergy
INSERT [dbo].[EventTickets] VALUES (5, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',2,50) -- Allocation of 50 Premium tickets for a perpetual event limited child event- Synergy

INSERT [dbo].[EventTickets] VALUES (6, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',1,100) -- Allocation of 100 Standard tickets for a perpetual event limited child event - Capital One
INSERT [dbo].[EventTickets] VALUES (6, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',3,50) -- Allocation of 50 VIP tickets for a perpetual event limited child event- Capital One

INSERT [dbo].[EventTickets] VALUES (7, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',1,10) -- Allocation of 10 Standard A one-off open-ended event - Synergy
INSERT [dbo].[EventTickets] VALUES (7, 5, N'5d415835-a304-45ae-b979-5f0eca28d261',2,15) -- Allocation of 15 Premium A one-off open-ended event - Synergy


/* Add some venues */
SET IDENTITY_INSERT dbo.Venues ON
INSERT dbo.Venues ([Id],[Name]) VALUES (1,'The Walkers Stadium')
INSERT dbo.Venues ([Id],[Name]) VALUES (2,'Anfield')
INSERT dbo.Venues ([Id],[Name]) VALUES (3,'Wembley Arena')
INSERT dbo.Venues ([Id],[Name]) VALUES (4,'NEC Birmingham')
INSERT dbo.Venues ([Id],[Name]) VALUES (5,'The Brighton Centre')
SET IDENTITY_INSERT dbo.Venues OFF


/* Add possesion of the venue to a user/role combo (more than one user/role comba can own the same venue) */
INSERT [dbo].[VenueOwners] VALUES (1, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452') -- Standard Chartered -> Walkers Stadium
INSERT [dbo].[VenueOwners] VALUES (2, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452') -- Standard Chartered -> Anfield
INSERT [dbo].[VenueOwners] VALUES (4, 5, N'6ece2d4b-508c-47c6-847f-fe355608a452') -- Standard Chartered -> NEC Birmingham

INSERT [dbo].[VenueOwners] VALUES (3, 5, N'5d415835-a304-45ae-b979-5f0eca28d261') -- Synergy -> Wembley Arena
INSERT [dbo].[VenueOwners] VALUES (4, 5, N'5d415835-a304-45ae-b979-5f0eca28d261') -- Synergy -> NEC Birmingham
INSERT [dbo].[VenueOwners] VALUES (5, 5, N'5d415835-a304-45ae-b979-5f0eca28d261') -- Synergy -> The Brighton Centre


/* Add events to venues Venue and Event must be owned by the same user/role combination. An event is not required to have a venue, and can have many venues */
-- Event Id, OwnerRoleId, OwnerUserId, VenueId
INSERT [dbo].[EventVenues] VALUES (1,5, N'6ece2d4b-508c-47c6-847f-fe355608a452',1)-- Standard Chartered -> EPL (14/15) -> Walkers Stadium
INSERT [dbo].[EventVenues] VALUES (1,5, N'6ece2d4b-508c-47c6-847f-fe355608a452',2)-- Standard Chartered -> EPL (14/15) -> Anfield

INSERT [dbo].[EventVenues] VALUES (2,5, N'6ece2d4b-508c-47c6-847f-fe355608a452',1)-- Standard Chartered -> Leic v Eve -> Walkers Stadium
INSERT [dbo].[EventVenues] VALUES (3,5, N'6ece2d4b-508c-47c6-847f-fe355608a452',2)-- Standard Chartered -> Liv v Sou -> Anfield

INSERT [dbo].[EventVenues] VALUES (4,5, N'5d415835-a304-45ae-b979-5f0eca28d261',3)-- Synergy -> Synergy perpetual promotion -> NEC Birmingham
INSERT [dbo].[EventVenues] VALUES (4,5, N'5d415835-a304-45ae-b979-5f0eca28d261',4)-- Synergy -> Synergy perpetual promotion -> NEC Birmingham
INSERT [dbo].[EventVenues] VALUES (5,5, N'5d415835-a304-45ae-b979-5f0eca28d261',3)-- Synergy -> Synergy perpetual promotion Time-limited child -> NEC Birmingham

INSERT [dbo].[EventVenues] VALUES (6,5, N'5d415835-a304-45ae-b979-5f0eca28d261',5)-- Capital One -> Capital One Day - a one-off event

INSERT [dbo].[EventVenues] VALUES (7,5, N'5d415835-a304-45ae-b979-5f0eca28d261',4)-- Synergy -> A one-off open-ended event


INSERT INTO [dbo].[Tokens] VALUES (1, N'Email Verification',N'A token used for email verification')
INSERT INTO [dbo].[Tokens] VALUES (2, N'User Verification',N'A token used for user verification')



-- Create an account for a sysadmin
INSERT [dbo].[Accounts] ([EmailAddress], [OwnerRoleId], [OwnerUserId], [PasswordHash], [EmailVerified], [SecurityStamp], [Active]) VALUES (N'test@mba.co.uk', 1, N'f50613a5-f898-4825-96a1-889655f651b8', N'AGlm5R4e666j4HqaNBq34yrae8odbpfYU7/VCKlUsm3ZF05AXICP0L/wXoIjDcQWKg==', 1, N'ded63921-378c-4254-bb75-ebabf150931a', 1)
