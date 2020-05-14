instance creation
byId: anId
	"Returns a new Issue that corresponds with the given id"

	| aUrl response |
	
	aUrl := 'https://gitlab.com/api/v4/projects/{1}/issues/{2}' format: { App get project id . anId }.
	
	response := 
		ZnClient new url: aUrl;
		setBearerAuthentication: App get token;
		get;
		response;
		contents.
		
	^(NeoJSONReader on: response readStream)
		mapInstVarsFor: Issue;
		nextAs: Issue