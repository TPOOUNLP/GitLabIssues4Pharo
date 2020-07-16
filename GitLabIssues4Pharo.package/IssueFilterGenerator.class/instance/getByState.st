filter creation
getByState

	^self filters at: 'state' ifAbsent: [ nil ]