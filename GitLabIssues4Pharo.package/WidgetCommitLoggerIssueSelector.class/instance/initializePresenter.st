initialization
initializePresenter

	issueSelector
		whenSelectedIssueChanged: [ buttonAccept enabled: GitlabConnector get selectedIssue isNotNil ].
		
	buttonAccept 
		enabled: false;
		action: [ self window close.
					 UIManager default inform: 'Commit logged'. ].
		
	buttonCancel action: [ GitlabConnector get selectedIssue: nil.
								  self window close ].