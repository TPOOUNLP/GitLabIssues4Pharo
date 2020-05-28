tests
testRemove
	| issue |
	
	(ZincRequest stub httpDelete: 'https://gitlab.com/api/v4/projects/3/issues/2') willReturn: true.
	
	App get selectedProject: (Project basicNew id: 3; issues: OrderedCollection new).
	
	issue := Issue new id: 1; iid: 2; title: 'Title'.
	App get selectedProject issues add: issue.
	
	self assert: issue remove equals: true.
	self assert: App get selectedProject issues size equals: 0.