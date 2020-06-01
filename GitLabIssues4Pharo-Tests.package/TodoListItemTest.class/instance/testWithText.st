tests
testWithText
	| text item |
	
	text := 'Some task'.
	item := TodoListItem withText: text.
	
	self deny: item done.
	self assert: item text equals: text.