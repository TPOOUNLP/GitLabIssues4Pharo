accessing
projectById: anId
	"Returns a new Project (from the api) that corresponds with the given id"
	"Should with get it from the api or the local collection?"

	| endpoint |
	
	endpoint := 'https://gitlab.com/api/v4/projects/{1}?simple=true' format: { anId }.
	
	"Should we extract custom mappings (or any mapping)?"	
	^(NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		mapInstVarsFor: Project;
		nextAs: Project