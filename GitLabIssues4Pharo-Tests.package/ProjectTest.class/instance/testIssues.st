tests
testIssues
	| project |
	project := Project new.
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: '[{"id":1,"title":"One"},{"id":2,"title":"Two"}]'.
	
	self assert: project issues first id equals: 1.
	self assert: project issues first title equals: 'One'.
	self assert: project issues last id equals: 2.
	self assert: project issues last title equals: 'Two'.