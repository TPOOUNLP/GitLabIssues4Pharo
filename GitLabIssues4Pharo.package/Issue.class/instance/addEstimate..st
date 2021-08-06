removing
addEstimate: aTime
	^ (ZincRequest
		httpPost: (Endpoint estimate: self time: aTime )
		content: '') isSuccess
		ifTrue: [ GitlabConnector get selectedProject issues remove: self.
			true ]
		ifFalse: [ false ]