tests
testWithToken
	|app|
	
	User stub get willReturn: (User new id: 'userID').
	Project stub get willReturn: (Project new id: 'projectID').
	
	app := App withToken: 'privateAccessToken'.
	
	self assert: app token equals: 'privateAccessToken'.
	self assert: app url equals: 'https://gitlab.com/api/v4'.
	self assert: app user id equals: 'userID'.
	self assert: app project id equals: 'projectID'