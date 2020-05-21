requesting
httpGet: url
	^ZnClient new url: url;
		setBearerAuthentication: App get token;
		get;
		response;
		contents