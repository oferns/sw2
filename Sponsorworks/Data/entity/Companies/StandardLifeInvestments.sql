

PRINT 'Creating user/role record for StandardLife as a company...'

EXEC dbo.AddRoleMember 
	 @StandardLifeId -- We already have this from the reseller creation
	, 'Standard Life Investments' -- UserName
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId output -- UserId for StandardLife 

SET @StandardLifeId = @ReturnUserId;

PRINT 'Created StandardLife user ' + CAST(@StandardLifeId as varchar(36))

PRINT 'Creating Admin Katy Watkin for StandardLife...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Katy Watkin' -- UserName
	, 3 -- RoleId : Admin
	, @StandardLifeId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for StandardLife Admin

PRINT 'Created StandardLife Admin user Katy Watkin... ' + CAST(@ReturnUserId as varchar(36))


PRINT 'Creating User Andrea Mercer for StandardLife...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Andrea Mercer' -- UserName
	, 6 -- RoleId : User
	, @StandardLifeId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for StandardLife Admin

PRINT 'Created StandardLife User Andrea Mercer... ' + CAST(@ReturnUserId as varchar(36))

PRINT 'Creating User Malcom Prince for StandardLife...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Malcom Prince' -- UserName
	, 6 -- RoleId : User
	, @StandardLifeId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for StandardLife Admin

PRINT 'Created StandardLife User Malcom Prince... ' + CAST(@ReturnUserId as varchar(36))