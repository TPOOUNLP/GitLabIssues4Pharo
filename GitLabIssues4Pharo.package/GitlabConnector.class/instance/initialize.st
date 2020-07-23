initialization
initialize

	self user: ([ User get ] on: Error do: [ User basicNew ]).
	self projects: OrderedCollection new.
	self issueFilters: IssueFilterGenerator new.
	self config isListeningForCommitEvent
		ifTrue: [ self subscribeToCommitEvent ]
		ifFalse: [ self unsubscribeToCommitEvent ]