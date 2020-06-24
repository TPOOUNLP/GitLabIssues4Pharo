requesting
httpDelete: url
	^ZnClient new url: url;
		setBearerAuthentication: GitlabConnector get token;
		delete;
		response;
		isSuccess