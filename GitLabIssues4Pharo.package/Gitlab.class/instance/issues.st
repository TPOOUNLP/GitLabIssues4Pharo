accessing
issues
	"Returns a collection of all the issues in the repo. Just a draft!"

	| aUrl response |
	
	aUrl := 'https://gitlab.com/api/v4/projects/{1}/issues' format: { Project new id }.
	
	response := 
		ZnClient new url: aUrl;
		setBearerAuthentication: self token;
		get;
		response;
		contents.
		
	^(NeoJSONReader on: response readStream)
	mapAllInstVarsFor: Issue;
	for: #ArrayOfIssues customDo: [ :mapping | mapping listOfElementSchema: Issue ];
	nextAs: #ArrayOfIssues
	