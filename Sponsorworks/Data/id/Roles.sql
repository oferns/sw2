/* This file provides the roles for the initial data load */
INSERT [dbo].[Roles] ([Id], [Name], [Description], [Active]) VALUES 
(1, N'sysadmin', N'System-wide administrator', 1)
, (2, N'reseller', N'Reseller account. Local login. Limited Federated access', 1)
, (3, N'admin', N'Tenant Administrator. Needs Local Account to operate. Think Company Administrator.', 1)
, (4, N'guest', N'Guest role. No Local Account needed. Federated Identity allowed. ', 1)
, (5, N'company', N' A company account. No Login', 1)
, (6, N'user', N'A basic user role', 1)
, (7, N'group', N'A group of guests', 1)
, (8, N'division', N'A user division', 1)
