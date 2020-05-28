requesting
httpPost: url content: json
	^ZnClient new url: url;
		setBearerAuthentication: App get token;
		entity: (ZnEntity 
        with: json
        type: ZnMimeType applicationJson);
		post;
		response;
		contents