initialization
initializePresenter

	[ GitlabConnector new.

	projectList
		items: GitlabConnector get reqProjects;
		whenListChanged: [ projectList resetSelection ];
		whenSelectedItemChanged: [ :project | GitlabConnector get selectedProject: project.
														 issueList items: GitlabConnector get selectedProject reqIssues.
														 project isNil ifTrue: [ labelProjectTitle label: '' ] 
																			ifFalse: [ labelProjectTitle label: 'Project: ' , project name ] ].
	
	issueList
		items: GitlabConnector get selectedProject reqIssues;
		whenListChanged: [ issueList resetSelection.
								 GitlabConnector get selectedIssue: nil ];
		whenSelectedItemChanged: [ :issue | GitlabConnector get selectedIssue: issue.
													  issue isNil
														ifTrue: [
															labelIssueName label: ''.
													  		labelIssueState label: ''.
													  		labelIssueDescription label: '' ]
													  	ifFalse: [ 
															labelIssueName label: 'Issue: ' , issue title.
													  		labelIssueState label: 'State: ' , issue state.
													  		labelIssueDescription label: 'Description: ' , issue description head ]
										].
		
		"buttonNew
			action: [  ]."
		
		"buttonEdit
			action: [  ]."
		
		buttonTodo
			action: [  WidgetTodoList new openWithSpec ].
									
		buttonDelete
			action: [ GitlabConnector get selectedIssue remove.
									  issueList items: GitlabConnector get selectedProject issues ].
									
	] on: Error do: [  ] 