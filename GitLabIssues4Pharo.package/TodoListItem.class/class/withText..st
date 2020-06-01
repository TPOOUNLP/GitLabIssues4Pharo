instance creation
withText: aString
	| item |
	
	item := TodoListItem new.
	
	item done: false.
	item text: aString.
	
	^item