initialization
initializePresenter

	[ GitlabConnector new.

	droplistState
		items: { 'any' . 'opened' . 'closed' } asOrderedCollection;
		whenSelectedItemChanged: [ :item | item = 'any'
			ifTrue: [ GitlabConnector get issueFilters unsetByState ]
			ifFalse: [ GitlabConnector get issueFilters byState: item ] ].	
		
	checkboxAssignee
		whenActivatedDo: [ GitlabConnector get issueFilters byAssignee: GitlabConnector get user id ];
		whenDeactivatedDo: [ GitlabConnector get issueFilters unsetByAssignee ].

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
			action: [ (UIManager default questionWithoutCancel: 'Are you sure you want to delete this issue?' title: 'Delete issue') ifTrue: [ 
							GitlabConnector get selectedIssue remove.
							issueList items: GitlabConnector get selectedProject issues.
							UIManager default inform: 'Issue deleted' ] ].
								
		buttonReload
			action: [ issueList items: GitlabConnector get selectedProject reqIssues.
						 UIManager default inform: 'Reloaded' ]						
									
	] on: Error do: [  ] 