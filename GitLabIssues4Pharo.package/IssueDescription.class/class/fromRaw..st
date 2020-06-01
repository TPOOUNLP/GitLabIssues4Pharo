instance creation
fromRaw: aString
	| description |
	
	description := IssueDescription new.
	
	aString linesDo: [ :line | (line matchesRegex: TodoListItem flag)
		ifTrue: [ description todo add: (TodoListItem fromRaw: line) ]
		ifFalse: [
			"Every line after the first TodoListItem has been found will not be considered." 
			description todo isEmpty
			ifTrue: [ description head: description head , line , Character cr asString ]
		] ].

	^description