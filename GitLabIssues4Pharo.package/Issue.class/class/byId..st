instance creation
byId: anId
	"Candidate for deprecation. Implemented at Project>>#IssueById:"

	| endpoint |
	
	endpoint := 'https://gitlab.com/api/v4/projects/{1}/issues/{2}' format: { App get selectedProject id . anId }.
	
	"Should we extract custom mappings (or any mapping)?"	
	^(NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		mapInstVarsFor: Issue;
		nextAs: Issue