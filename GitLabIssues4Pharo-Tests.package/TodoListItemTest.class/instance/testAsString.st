tests
testAsString
	| finished unfinished |
	
	finished := '* [x] Finished task'.
	unfinished := '* [ ] Unfinished task'.
	
	self assert: (TodoListItem fromRaw: finished) asString equals: finished.
	self assert: (TodoListItem fromRaw: unfinished) asString equals: unfinished