instance creation
get
	| endpoint |
	
	endpoint := App get url , '/projects/{1}' format: { super new id: '18650441' }.
	
	"Should we extract custom mappings (or any mapping)?"
	^(NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		mapInstVarsFor: Project;
		nextAs: Project