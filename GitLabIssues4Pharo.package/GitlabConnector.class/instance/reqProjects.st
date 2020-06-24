accessing
reqProjects
	"Returns a collection of all projects for the current user."
	
	^self projects: ((NeoJSONReader on: (ZincRequest httpGet: (Endpoint simpleProjects)) readStream)
		mapInstVarsFor: Project;
		for: #ArrayOfProjects customDo: [ :mapping | mapping listOfElementSchema: Project ];
		nextAs: #ArrayOfProjects) asOrderedCollection;
		projects
		
	