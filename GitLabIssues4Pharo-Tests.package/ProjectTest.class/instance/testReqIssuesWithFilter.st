tests
testReqIssuesWithFilter
	| project |
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: '[{"id":6,"title":"Six"}]'.
	
	project := Project new id: 5.
	App get issueFilters byState: 'closed'.
	
	self assert: project reqIssues first id equals: 6.
	self assert: project reqIssues first title equals: 'Six'.
	self assert: App get issueFilters get equals: '?state=closed'.