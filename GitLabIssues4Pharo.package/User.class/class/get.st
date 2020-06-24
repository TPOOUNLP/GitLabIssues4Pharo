instance creation
get

	^(NeoJSONReader on: (ZincRequest httpGet: (Endpoint user)) readStream)
		mapInstVarsFor: User;
		nextAs: User
	