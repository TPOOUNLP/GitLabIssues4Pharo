actions api
get
	| result |

	self filters isEmpty
		ifTrue: [ result := ''. ]
		ifFalse: [ result := '?'.
			self filters keysAndValuesDo: [ :k :v | result := result , k , '=' , v , '&' ].
			result := result allButLast ].
		
	^result