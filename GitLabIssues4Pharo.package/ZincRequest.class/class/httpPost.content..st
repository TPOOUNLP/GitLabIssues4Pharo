requesting
httpPost: url content: json
	^ZnClient new url: url;
		setBearerAuthentication: GitlabConnector get config publicAccessToken;
		entity: (ZnEntity 
        with: json
        type: ZnMimeType applicationJson);
		post;
		response
		"contents"