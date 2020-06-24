requesting
httpPut: url content: json
	^ZnClient new url: url;
		setBearerAuthentication: GitlabConnector get token;
		entity: (ZnEntity 
        with: json
        type: ZnMimeType applicationJson);
		put;
		response;
		contents