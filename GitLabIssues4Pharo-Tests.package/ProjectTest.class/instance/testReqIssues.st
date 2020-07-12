tests
testReqIssues
	| project |
	
	(ZincRequest stub httpGet: 'https://gitlab.com/api/v4/projects/5/issues') willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '[{"id":1,"title":"One"},{"id":2,"title":"Two"}]')).
	
	project := Project new id: 5.
	
	self assert: project reqIssues first id equals: 1.
	self assert: project reqIssues first title equals: 'One'.
	self assert: project reqIssues last id equals: 2.
	self assert: project reqIssues last title equals: 'Two'.