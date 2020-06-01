tests
testTitled
	| issue |
	
	(ZincRequest stub httpPost: (Kind of: String) content: (Kind of: String))
		willReturn: '{"id":1,"title":"aTitle"}'.
	
	App get selectedProject id: 3.
	
	issue := Issue titled: 'aTitle'.
	
	self assert: issue id equals: 1.
	self assert: issue title equals: 'aTitle'.