tests
testWithToken
	|app|
	
	User stub get willReturn: (User new id: 'userID').
	Project stub get willReturn: (Project new id: 'projectID').
	
	app := GitlabConnector withToken: 'privateAccessToken'.
	
	self assert: app token equals: 'privateAccessToken'.
	self assert: app user id equals: 'userID'.
	self assert: app selectedProject id equals: 'projectID'