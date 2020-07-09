as yet unclassified
insertCommitIdIntoIssue: anAnnouncement
	| wclis |
	Transcript show: 'lalla'.
	wclis := WidgetCommitLoggerIssueSelector new.
	wclis openWithSpec.
	wclis window whenClosedDo: [ 
		GitlabConnector get selectedIssue isNotNil ifTrue: [ 
			GitlabConnector get selectedIssue comment: 
				('Committed: ' , anAnnouncement repository headCommit id asString) 
			] 
	]