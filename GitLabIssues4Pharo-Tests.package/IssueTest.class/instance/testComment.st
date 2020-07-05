tests
testComment
	| issue body note |
	
	(ZincRequest stub httpPost: (Kind of: String) content: (Kind of: String)) willReturn: '{"id":3,"body":"Some text"}'.
	
	body := 'Some text'.
	issue := Issue new id: 1; iid: 2; title: 'Title'.
	note := issue comment: body.
	
	self assert: note id equals: 3.
	self assert: note body equals: body.