tests
testNew
	| body note |
	
	body := 'Some text'.
		
	note := IssueNote new: body.
	
	self assert: note body equals: body