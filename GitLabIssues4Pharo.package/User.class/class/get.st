instance creation
get
	| result |
	
	result := ZincRequest httpGet: (Endpoint user).
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].
	
	^(NeoJSONReader on: result contents readStream)
		mapInstVarsFor: User;
		nextAs: User
	