as yet unclassified
insertCommitIdIntoIssue: anAnnouncement
	| wclis |
	wclis := WidgetCommitLoggerIssueSelector new.
	wclis openWithSpec.
	wclis window whenClosedDo: [ 
		GitlabConnector get selectedIssue isNotNil ifTrue: [ 
			GitlabConnector get selectedIssue comment: 
				('Committed: ' , anAnnouncement repository headCommit id asString) 
			] 
	]