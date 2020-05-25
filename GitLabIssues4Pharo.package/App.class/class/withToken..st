instance creation
withToken: aToken
	"New Gitlab object with token"

	instance := self basicNew
		token: aToken;
		initialize.
		
	^self get