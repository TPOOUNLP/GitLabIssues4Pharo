requesting
httpGet: url
	^ZnClient new url: url;
		setBearerAuthentication: GitlabConnector get token;
		get;
		response;
		contents