accessing
issues
	"Returns a collection of all the issues for this project. Just a draft!"

	| endpoint |
	
	endpoint := 'https://gitlab.com/api/v4/projects/{1}/issues' format: { self id }.
	
	"Should we extract custom mappings (or any mapping)?"
	^(NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		mapInstVarsFor: Issue;
		for: #ArrayOfIssues customDo: [ :mapping | mapping listOfElementSchema: Issue ];
		nextAs: #ArrayOfIssues
	