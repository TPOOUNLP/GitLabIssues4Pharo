tests
testGet
	| project |	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: '{"id":1,"name":"aName"}'.
	
	project := Project get.
	
	self assert: project id equals: 1.
	self assert: project name equals: 'aName'