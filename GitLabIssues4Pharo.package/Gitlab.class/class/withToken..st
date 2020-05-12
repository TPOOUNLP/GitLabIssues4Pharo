instance creation
withToken: aToken
	"New Gitlab object with token"
	
	^self basicNew
		token: aToken;
		initialize