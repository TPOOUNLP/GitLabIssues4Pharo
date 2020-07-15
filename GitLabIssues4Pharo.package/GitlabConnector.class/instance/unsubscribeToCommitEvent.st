announcement
unsubscribeToCommitEvent

	self config isListeningForCommitEvent: false.
	Iceberg announcer subscriptions removeSubscriberInstances: self.
	