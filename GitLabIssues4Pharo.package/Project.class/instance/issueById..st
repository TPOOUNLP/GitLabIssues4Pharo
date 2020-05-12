accessing
issueById: anId
	"Returns the Issue that corresponds with the given id"

	| aUrl response |
	
	aUrl := 'https://gitlab.com/api/v4/projects/{1}/issues/{2}' format: { self id . anId }.
	
	response := 
		ZnClient new url: aUrl;
		setBearerAuthentication: App get token;
		get;
		response;
		contents.
		
	^(NeoJSONReader on: response readStream)
		mapInstVarsFor: Issue;
		nextAs: Issue
	