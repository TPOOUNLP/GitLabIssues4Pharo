instance creation
new: aGitlab
	"Should be a singleton?"

	| endpoint response |
	
	endpoint := '/user'.
	
	"Candidate for method extraction"
	response := 
		ZnClient new url: (aGitlab url , endpoint);
		setBearerAuthentication: aGitlab token;
		get;
		response;
		contents.
		
	^(NeoJSONReader on: response readStream)
		mapAllInstVarsFor: User;
		nextAs: User
	