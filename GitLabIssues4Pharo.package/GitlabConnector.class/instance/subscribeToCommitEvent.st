announcement
subscribeToCommitEvent

	self unsubscribeToCommitEvent.
	self config isListeningForCommitEvent: true.
	Iceberg announcer subscribe: IceCommited send: #insertCommitIdIntoIssue: to: self.
	