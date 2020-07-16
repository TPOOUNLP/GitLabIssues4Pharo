converting
asString
	| raw |
	
	raw := self head.
	self todo do: [ :item | raw := raw , item asString , String lf ].
	"Do not incluede last cr. Yes..."
	(raw isNotNil and: raw ~= '') ifTrue: [ raw := raw allButLast ].
	
	^raw