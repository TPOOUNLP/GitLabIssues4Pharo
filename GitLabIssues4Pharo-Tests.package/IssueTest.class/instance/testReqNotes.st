tests
testReqNotes
	| issue |
	
	(ZincRequest stub httpGet: 'https://gitlab.com/api/v4/projects/1/issues/4/notes') willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '[{"id":1,"body":"One"},{"id":2,"body":"Two"}]')).
	
	issue := Issue new id: 3; iid: 4; project_id: 1.
	
	self assert: issue reqNotes first id equals: 1.
	self assert: issue reqNotes first body equals: 'One'.
	self assert: issue reqNotes last id equals: 2.
	self assert: issue reqNotes last body equals: 'Two'.