

PRINT 'Creating user/role record for Liverpool as a company...'

EXEC dbo.AddRoleMember 
	 @LiverpoolId -- We already have this from the reseller creation
	, 'Liverpool FC' -- UserName
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId output -- UserId for Liverpool 

SET @LiverpoolId = @ReturnUserId;

PRINT 'Created Liverpool user ' + CAST(@LiverpoolId as varchar(36))

PRINT 'Creating Admin Simon Stevens for Liverpool...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Simon Stevens' -- UserName
	, 3 -- RoleId : Admin
	, @LiverpoolId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Liverpool Admin

PRINT 'Created Liverpool Admin user Simon Stevens... ' + CAST(@ReturnUserId as varchar(36))


PRINT 'Creating User Si Yun-ki for Liverpool...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Si Yun-ki' -- UserName
	, 6 -- RoleId : User
	, @LiverpoolId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Liverpool Admin

PRINT 'Created Liverpool User Si Yun-ki... ' + CAST(@ReturnUserId as varchar(36))

PRINT 'Creating User Ben Price for Liverpool...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Ben Price' -- UserName
	, 6 -- RoleId : User
	, @LiverpoolId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Liverpool Admin

PRINT 'Created Liverpool User Ben Price... ' + CAST(@ReturnUserId as varchar(36))