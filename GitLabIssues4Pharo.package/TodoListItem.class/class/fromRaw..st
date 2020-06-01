instance creation
fromRaw: aString
	| item |

	item := TodoListItem new.

	item done: (aString at: 4) = $x.
	item text: (aString copyFrom: 7 to: aString size).
	
	^item