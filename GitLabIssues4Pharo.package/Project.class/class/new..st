instance creation
new: aGitlab
	"Should be a singleton?"

	| endpoint response |
	
	endpoint := '/projects/{1}' format: { self new id }. "yeah, yeah..."
	
	"Candidate for method extraction"
	response := 
		ZnClient new url: (aGitlab url , endpoint);
		setBearerAuthentication: aGitlab token;
		get;
		response;
		contents.
		
	^(NeoJSONReader on: response readStream)
		mapAllInstVarsFor: Project;
		nextAs: Project