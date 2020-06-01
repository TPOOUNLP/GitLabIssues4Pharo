converting
asString
	| raw |
	
	raw := self head.
	self todo do: [ :item | raw := raw , item asString , Character cr asString ].
	"Do not incluede last cr. Yes..."
	raw := raw allButLast.
	
	^raw