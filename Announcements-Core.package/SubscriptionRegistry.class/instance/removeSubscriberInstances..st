add/remove
removeSubscriberInstances: subscriber
	
	^ self protected: [
		subscriptions removeAllSuchThat: [ :subscription | subscription subscriber isMemberOf: subscriber class ]]

