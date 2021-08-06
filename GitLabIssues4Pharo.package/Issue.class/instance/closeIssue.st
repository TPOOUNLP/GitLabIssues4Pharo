removing
closeIssue
	^ (ZincRequest
		httpPut: (Endpoint closeIssue: self)
		content: '') isSuccess
		ifTrue: [ true ]
		ifFalse: [ false ]