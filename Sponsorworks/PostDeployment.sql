/*
--------------------------------------------------------------------------------------
 This file calls the scripts in the Data folder to create the basic requirements 
 for the Sponsorworks system such as roles, role relationships, a sysadmin etc
--------------------------------------------------------------------------------------
*/


DECLARE @ReturnUserId uniqueidentifier; -- Used as output paramater in sp.

DECLARE @SysadminId uniqueidentifier;

DECLARE @SynergyId uniqueidentifier;
DECLARE @AcmeId uniqueidentifier;

DECLARE @StandardCharteredId uniqueidentifier;
DECLARE @LiverpoolId uniqueidentifier;
DECLARE @StandardLifeId uniqueidentifier;

PRINT 'Creating System Roles...'
:r .\Data\Id\Roles.sql
PRINT 'System Roles created...'

PRINT 'Creating System Role Relationships...'
:r .\Data\Id\RoleRelationships.sql
PRINT 'System Role Relationships created...'

PRINT 'Creating System Role Restrictions...'
:r .\Data\Id\RoleRestrictions.sql
PRINT 'System Role Restrictions created...'

PRINT 'Creating Sysadmin..'
:r .\Data\Id\Sysadmin.sql
PRINT 'Sysadmin created...'

PRINT 'Creating Synergy as a reseller..'
:r .\Data\entity\Resellers\Synergy.sql
PRINT 'Synergy as a reseller created'

PRINT 'Creating Acme as a reseller..'
:r .\Data\entity\Resellers\Acme.sql
PRINT 'Acme as a reseller created'

PRINT 'Creating Standard Chartered as a company..'
:r .\Data\entity\Companies\StandardChartered.sql
PRINT 'Standard Chartered as a company created'

PRINT 'Creating Synergy as a company..'
:r .\Data\entity\Companies\Synergy.sql
PRINT 'Synergy as a company created'

PRINT 'Creating LFC as a company..'
:r .\Data\entity\Companies\Lfc.sql
PRINT 'LFC as a company created'

PRINT 'Creating Standard Life as a company...'
:r .\Data\entity\Companies\StandardLifeInvestments.sql
PRINT 'Standard Life as a company created...'

PRINT 'Creating Domains..'
:r .\Data\entity\Domains.sql
PRINT 'Domains created...'

PRINT 'Creating AllocationStatus..'
:r .\Data\static\AllocationStatus.sql
PRINT 'AllocationStatus created...'

PRINT 'Creating Tokens..'
:r .\Data\static\Token.sql
PRINT 'Tokens created...'

PRINT 'Creating Tickets..'
:r .\Data\entity\Tickets.sql
PRINT 'Tickets created...'

PRINT 'Creating EPL Events...'
:r .\Data\entity\Events\EPL_14-15.sql
PRINT 'EPL Events created...'

PRINT 'Creating Heineken Cup Events...'
:r .\Data\entity\Events\HeinekenCup_14.sql
PRINT 'EPL Events created...'

PRINT 'Creating Six Nations Events...'
:r .\Data\entity\Events\SixNations_14.sql
PRINT 'Six Nations Events created...'





