instance creation
withToken: aToken
	"New Gitlab object with token"
	
	| gitlab |
	gitlab := self new.
	gitlab token: aToken.
	^gitlab