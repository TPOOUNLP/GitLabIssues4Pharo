instance creation
new 
	| aGitlabConnector |
	
	aGitlabConnector := self basicNew config: GCConfiguration new.
	self instance: aGitlabConnector.
	self instance: aGitlabConnector initialize.
	
	^instance