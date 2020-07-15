removing
remove
	
	^(ZincRequest httpDelete: (Endpoint issueByIid: self iid)) isSuccess
		ifTrue: [ GitlabConnector get selectedProject issues remove: self.
					 true ]
		ifFalse: [ false ]