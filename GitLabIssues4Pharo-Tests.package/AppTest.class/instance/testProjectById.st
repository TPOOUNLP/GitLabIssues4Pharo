tests
testProjectById
	| project |
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: '{"id":1,"name":"aProjectName"}'.
	
	project := App get projectById: 1.
	
	self assert: project id equals: 1.
	self assert: project name equals: 'aProjectName'.