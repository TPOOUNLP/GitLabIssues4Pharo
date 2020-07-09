initialization
initializePresenter

	issueSelector
		whenSelectedIssueChanged: [ buttonAccept enabled: GitlabConnector get selectedIssue isNotNil ].
		
	buttonAccept 
		enabled: false;
		action: [ self window close ].
		
	buttonCancel action: [ GitlabConnector get selectedIssue: nil.
								  self window close ].