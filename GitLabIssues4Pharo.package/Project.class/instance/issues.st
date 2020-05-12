accessing
issues
	"Returns a collection of all the issues for this project. Just a draft!"

	| aUrl response |
	
	aUrl := 'https://gitlab.com/api/v4/projects/{1}/issues' format: { self id }.
	
	response := 
		ZnClient new url: aUrl;
		setBearerAuthentication: App get token;
		get;
		response;
		contents.
		
	^(NeoJSONReader on: response readStream)
		mapInstVarsFor: Issue;
		for: #ArrayOfIssues customDo: [ :mapping | mapping listOfElementSchema: Issue ];
		nextAs: #ArrayOfIssues
	