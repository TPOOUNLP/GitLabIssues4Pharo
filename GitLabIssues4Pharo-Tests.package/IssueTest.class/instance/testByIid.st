tests
testByIid
	| project issue |
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '{"id":2,"title":"Two"}')).
	
	project := Project new id: 1.
	issue := Issue byIid: 2.
	
	self assert: issue id equals: 2.
	self assert: issue title equals: 'Two'.