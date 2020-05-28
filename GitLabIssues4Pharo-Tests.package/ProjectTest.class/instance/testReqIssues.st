tests
testReqIssues
	| project |
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: '[{"id":1,"title":"One"},{"id":2,"title":"Two"}]'.
	
	project := Project new.
	
	self assert: project reqIssues first id equals: 1.
	self assert: project reqIssues first title equals: 'One'.
	self assert: project reqIssues last id equals: 2.
	self assert: project reqIssues last title equals: 'Two'.