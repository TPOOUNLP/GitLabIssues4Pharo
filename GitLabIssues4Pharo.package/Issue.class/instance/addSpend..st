removing
addSpend: aTime
	^ (ZincRequest
		httpPost: (Endpoint spendTime: self time: aTime )
		content: '') isSuccess
		ifTrue: [ GitlabConnector get selectedProject issues remove: self.
			true ]
		ifFalse: [ false ]