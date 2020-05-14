updating
update
	"Could have a ref to 'last saved' and compare it to 'self', thus checking for dirtiness before updating :/"

	| json endpoint |
	
	endpoint := '/projects/{1}/issues/{2}' format: {App get project id . self iid}.
	
	json := String streamContents: [ :stream |
		(NeoJSONWriter on: stream)
		mapInstVarsFor: Issue;
		nextPut: self ].
	
	^ZnClient new url: (App get url , endpoint);
		setBearerAuthentication: App get token;
		entity: (ZnEntity 
        with: json
        type: ZnMimeType applicationJson);
		put;
		response;
		isSuccess