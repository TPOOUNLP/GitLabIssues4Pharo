requesting
httpPut: url content: json
	^ZnClient new url: url;
		setBearerAuthentication: App get token;
		entity: (ZnEntity 
        with: json
        type: ZnMimeType applicationJson);
		put;
		response;
		contents