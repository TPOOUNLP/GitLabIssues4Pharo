announcement
subscribeToCommitEvent

	self config isListeningForCommitEvent: true.
	self unsubscribeToCommitEvent.
	Iceberg announcer subscribe: IceCommited send: #insertCommitIdIntoIssue: to: self.
	