accessing
projectById: anId
	"Returns a new Project (from the api) that corresponds with the given id"

	^(NeoJSONReader on: (ZincRequest httpGet: (Endpoint simpleProjectById: anId)) readStream)
		mapInstVarsFor: Project;
		nextAs: Project