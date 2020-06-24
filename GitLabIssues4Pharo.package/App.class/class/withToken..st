instance creation
withToken: aToken
	"New GitlabConnector object with token"

	instance := self basicNew
		token: aToken;
		initialize.
		
	^self get