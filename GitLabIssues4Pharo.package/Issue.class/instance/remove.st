removing
remove
	"Deletes this issue from the server and the local collection at its project."
	
	| endpoint |
	
	endpoint := App get url , '/projects/{1}/issues/{2}' format: {App get selectedProject id . self iid}.
	
	"PLEASE refactor this!"
	^(ZincRequest httpDelete: endpoint)
		ifTrue: [ App get selectedProject issues remove: self.
					 true ]
		ifFalse: [ false ]