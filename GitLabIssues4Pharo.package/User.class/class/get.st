instance creation
get
	| endpoint |
	
	endpoint := App get url , '/user'.
	
	"Should we extract custom mappings (or any mapping)?"
	^(NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		mapInstVarsFor: User;
		nextAs: User
	