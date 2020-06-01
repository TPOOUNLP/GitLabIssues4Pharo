converting
asString
	| raw |
	
	raw := '* [ ] ' , self text.
	
	self done ifTrue: [ raw := raw copyReplaceFrom: 4 to: 4 with: 'x' ].
	
	^raw