tests
testReqProjects
	| projects |
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '[{"id":1,"name":"first"},{"id":2,"name":"last"}]')).
	
	projects := GitlabConnector get reqProjects.
	
	self assert: projects first name equals: 'first'.
	self assert: projects last name equals: 'last'.