announcement
unsubscribeToCommitEvent

	self config isListeningForCommitEvent: false.
	Iceberg announcer unsubscribe: self.
	