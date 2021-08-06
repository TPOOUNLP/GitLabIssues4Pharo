initialization
initializePresenter
	self issueWorkingCopy: GitlabConnector get selectedIssue shallowCopy.
	(self issueWorkingCopy time_stats time_estimate = 0)
		ifTrue: [ labelEstimated label: 'Estimated time: 0h' ];
		ifFalse: [ labelEstimated
					label:
						'Estimated time: '
							, self issueWorkingCopy time_stats human_time_estimate ].
	(self issueWorkingCopy time_stats total_time_spent = 0)
		ifTrue: [ labelSpent label: 'Spended time: 0h' ];
		ifFalse: [ labelSpent
					label:
						'Spended time: '
							, self issueWorkingCopy time_stats human_time_estimate ].
	buttonAddSpend
		action: [ inputSpend text = ''
				ifFalse: [ GitlabConnector get selectedIssue addSpend: inputSpend text.
					UIManager default inform: 'Issue updated' ] ].