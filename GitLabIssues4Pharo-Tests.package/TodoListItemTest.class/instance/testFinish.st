tests
testFinish
	| finished unfinished |
	
	finished := TodoListItem fromRaw: '* [x] Finished task'.
	unfinished := TodoListItem fromRaw: '* [ ] Unfinished task'.
	
	self assert: finished finish done.
	self assert: unfinished finish done.