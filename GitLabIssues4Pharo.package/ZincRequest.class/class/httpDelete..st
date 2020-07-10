requesting
httpDelete: url
	^ZnClient new url: url;
		setBearerAuthentication: GitlabConnector get config publicAccessToken;
		delete;
		response
		"isSuccess"