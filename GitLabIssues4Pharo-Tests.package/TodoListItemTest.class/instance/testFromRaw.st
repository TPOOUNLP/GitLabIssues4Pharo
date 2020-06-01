tests
testFromRaw
	| finished unfinished |
	
	finished := TodoListItem fromRaw: '* [x] Some task'.
	unfinished := TodoListItem fromRaw: '* [ ] Other task'.
	
	self assert: finished done.
	self assert: finished text equals: 'Some task'.
	self deny: unfinished done.
	self assert: unfinished text equals: 'Other task'.
	