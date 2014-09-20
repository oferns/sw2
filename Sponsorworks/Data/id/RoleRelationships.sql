/* This file provides the role relationships for the initial data load */
INSERT [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]) VALUES 
(2, 3) -- reseller->admin
,(2, 5) -- reseller->company
,(2, 6) -- reseller->user
,(2, 8) -- reseller->division
,(5, 7) -- company->group
,(5, 3) -- company->admin
,(5, 4) -- company->guest
,(5, 6) -- company->user
,(5, 8) -- company->division
,(8, 8) -- division->division
,(8, 6) -- divsion->user
,(7, 4) -- group-> guest
