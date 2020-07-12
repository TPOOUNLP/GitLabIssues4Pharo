tests
testReqIssuesWithFilter
	| project |
	
	(ZincRequest stub httpGet: 'https://gitlab.com/api/v4/projects/5/issues?state=closed') willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '[{"id":6,"title":"Six"}]')).
	
	project := Project new id: 5.
	GitlabConnector get issueFilters byState: 'closed'.
	
	self assert: project reqIssues first id equals: 6.
	self assert: project reqIssues first title equals: 'Six'.
	self assert: GitlabConnector get issueFilters get equals: '?state=closed'.