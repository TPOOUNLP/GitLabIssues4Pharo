tests
testGet
	| user |
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: '{"id":1,"username":"aName"}'.
	
	user := User get.
	
	self assert: user id equals: 1.
	self assert: user username equals: 'aName'