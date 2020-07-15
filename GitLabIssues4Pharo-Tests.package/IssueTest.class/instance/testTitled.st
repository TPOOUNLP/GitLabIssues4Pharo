tests
testTitled
	| issue |
	
	(ZincRequest stub httpPost: (Kind of: String) content: (Kind of: String))
		willReturn: ((ZnResponse statusCode: 200) entity: (ZnEntity json: '{"id":1,"title":"aTitle"}')).
		
	GitlabConnector get selectedProject id: 3.
	
	issue := Issue titled: 'aTitle'.
	
	self assert: issue id equals: 1.
	self assert: issue title equals: 'aTitle'.