announcement
subscribeToCommitEvent
	self unsubscribeToCommitEvent.
	self config isListeningForCommitEvent: true.
	Iceberg announcer
		when: IceCommited
		send: #insertCommitIdIntoIssue:
		to: self