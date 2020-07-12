tests
testComment
	| issue body note |
	
	(ZincRequest stub httpPost: 'https://gitlab.com/api/v4/projects/1/issues/2/notes' content: '{"body":"Some text"}') willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '{"id":3,"body":"Some text"}')).
	
	body := 'Some text'.
	issue := Issue new id: 1; iid: 2; title: 'Title'.
	note := issue comment: body.
	
	self assert: note id equals: 3.
	self assert: note body equals: body.