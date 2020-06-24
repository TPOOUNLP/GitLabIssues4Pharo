removing
remove
	"Deletes this issue from the server and the local collection at its project."
	
	^(ZincRequest httpDelete: (Endpoint issueByIid: self iid))
		ifTrue: [ GitlabConnector get selectedProject issues remove: self.
					 true ]
		ifFalse: [ false ]