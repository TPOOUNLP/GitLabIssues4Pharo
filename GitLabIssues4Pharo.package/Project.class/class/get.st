instance creation
get

	^(NeoJSONReader on: (ZincRequest httpGet: (Endpoint projectById: '18650441')) readStream)
		mapInstVarsFor: Project;
		nextAs: Project