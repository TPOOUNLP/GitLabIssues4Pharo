accessing
reqProjects
	"Returns a collection of all projects for the current user."

	| endpoint |
	
	endpoint := 'https://gitlab.com/api/v4/users/{1}/projects?simple=true' format: { self user id }.
	
	"Should we extract custom mappings (or any mapping)?"
	^self projects: ((NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		mapInstVarsFor: Project;
		for: #ArrayOfProjects customDo: [ :mapping | mapping listOfElementSchema: Project ];
		nextAs: #ArrayOfProjects) asOrderedCollection;
		projects
		
	