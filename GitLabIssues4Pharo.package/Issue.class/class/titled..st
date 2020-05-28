instance creation
titled: aString
	"Returns a new Issue with the given title."

	| endpoint json |
	
	endpoint := 'https://gitlab.com/api/v4/projects/{1}/issues' format: { App get selectedProject id }.
	
	json := NeoJSONWriter toString: { #title -> aString } asDictionary.
	
	"Should we extract custom mappings (or any mapping)?"	
	^(NeoJSONReader on: (ZincRequest httpPost: endpoint content: json) readStream)
		mapInstVarsFor: Issue;
		nextAs: Issue