tests
testStart
	| finished unfinished |
	
	finished := TodoListItem fromRaw: '* [x] Finished task'.
	unfinished := TodoListItem fromRaw: '* [ ] Unfinished task'.
	
	self deny: finished start done.
	self deny: unfinished start done.