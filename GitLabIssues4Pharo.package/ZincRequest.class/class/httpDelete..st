requesting
httpDelete: url
	^ZnClient new url: url;
		setBearerAuthentication: App get token;
		delete;
		response;
		isSuccess