accessing
reqProjects
	| result |
	
	result := ZincRequest httpGet: (Endpoint simpleProjects).
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].
	
	^self projects: ((NeoJSONReader on: result contents readStream)
		mapInstVarsFor: Project;
		for: #ArrayOfProjects customDo: [ :mapping | mapping listOfElementSchema: Project ];
		nextAs: #ArrayOfProjects) asOrderedCollection;
		projects
		
	