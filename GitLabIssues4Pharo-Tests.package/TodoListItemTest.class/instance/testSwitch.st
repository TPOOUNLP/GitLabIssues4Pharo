tests
testSwitch
	| finished unfinished |
	
	finished := TodoListItem fromRaw: '* [x] Finished task'.
	unfinished := TodoListItem fromRaw: '* [ ] Unfinished task'.
	
	self deny: finished switch done.
	self assert: unfinished switch done.