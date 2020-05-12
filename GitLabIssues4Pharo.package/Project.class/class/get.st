instance creation
get
	"Should be a singleton?"

	| endpoint response |
	
	endpoint := '/projects/{1}' format: { self new id }. "yeah, yeah..."
	
	"Candidate for method extraction"
	response := 
		ZnClient new url: (App get url , endpoint);
		setBearerAuthentication: App get token;
		get;
		response;
		contents.
		
	^(NeoJSONReader on: response readStream)
		mapInstVarsFor: Project;
		nextAs: Project