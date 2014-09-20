/* This file contains the role restrictions that effectively define top level permissions for each role */

/* - Restricts who can own a Domain*/
INSERT [dbo].[DomainOwnerRoles] ([RoleId]) VALUES 
	(1) --  sysadmin 
	, (2) -- reseller 
	, (5) -- company


/* Restricts who can request Tickets */
INSERT [dbo].[TicketRequestorRoles] ([RoleId]) VALUES 
	(3) -- admin
	, (6) -- user - Restricts who can request Tickets


/*  Restricts who can have a local account to login with */
INSERT [dbo].[AccountOwnerRoles] ([RoleId]) VALUES 
	(1) -- sysadmin
	, (3) -- admin 
	, (6) -- user


/* - Restricts who can have a External account to login with */
INSERT [dbo].[ExternalAccountOwnerRoles] ([RoleId], [Active]) VALUES 
	(3,1) -- admin 
	, (4,1) -- guest - Restricts who can have a External account to login with
	, (6,1) -- user - Restricts who can have a External account to login with


/* Restricts who can own an event */
INSERT [dbo].[EventOwnerRoles] ([RoleId]) VALUES (5) -- company


/* Restricts who can be invited to an Event */
INSERT [dbo].[TicketPatronageRoles] ([RoleId]) VALUES 
	(4) -- guest - 
	, (7) -- group


INSERT [dbo].[ResourceOwnerRoles] ([RoleId]) VALUES (2) -- reseller - Restricts who can own a resource Override
, (5) -- company - Restricts who can own a resource Override


INSERT [dbo].[TicketAllocationRoles] ([RoleId]) VALUES (3) -- admin - Restricts who can allocate tickets


INSERT [dbo].[FieldOwnerRoles] ([RoleId]) VALUES (2) -- reseller - Restricts who can own fields
, (5) -- company - Restricts who can own fields


INSERT [dbo].[TicketOwnerRoles] ([RoleId]) VALUES (5) -- company - Restricts who can own tickets


INSERT [dbo].[VenueOwnerRoles] ([RoleId]) VALUES (5) -- company - - Restricts who can own Venues

