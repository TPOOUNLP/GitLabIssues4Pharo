tests
testIssueById
	| project issue |
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: '{"id":2,"title":"Two"}'.
	
	project := Project new id: 1.
	issue := project issueById: 2.
	
	self assert: issue id equals: 2.
	self assert: issue title equals: 'Two'.