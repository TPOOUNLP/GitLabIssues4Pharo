instance creation
new
	| aGCConfiguration |
	
	aGCConfiguration := self basicNew initialize.
	[ aGCConfiguration import ] on: Error do: [  ].
	
	^aGCConfiguration