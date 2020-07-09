requesting
httpGet: url
	^ZnClient new url: url;
		setBearerAuthentication: GitlabConnector get config publicAccessToken;
		get;
		response;
		contents