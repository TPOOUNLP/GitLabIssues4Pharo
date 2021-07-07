initialization
initializePresenter
	[ droplistState
		items: {'any' . 'opened' . 'closed'} asOrderedCollection;
		whenBuiltDo: [ droplistState setSelectedItem: 'any' ];
		whenSelectedItemChanged: [ :item | 
			item = 'any'
				ifTrue: [ GitlabConnector get issueFilters unsetByState ]
				ifFalse: [ GitlabConnector get issueFilters byState: item ] ].
	checkboxAssignee
		whenBuiltDo: [ checkboxAssignee state: false ];
		whenActivatedDo: [ GitlabConnector get issueFilters
				byAssignee: GitlabConnector get user id ];
		whenDeactivatedDo: [ GitlabConnector get issueFilters unsetByAssignee ].
	projectList
		items: GitlabConnector get reqProjects;
		whenSelectedItemChanged: [ :project | 
			GitlabConnector get selectedProject: project.
			project isNil
				ifTrue: [ issueList items: {}.
					labelProjectTitle label: '' ]
				ifFalse: [ issueList items: GitlabConnector get selectedProject reqIssues.
					labelProjectTitle label: 'Project: ' , project name ] ].
	issueList
		whenBuiltDo: [ GitlabConnector get selectedProject
				ifNil: [ issueList items: {} ]
				ifNotNil: [ issueList items: GitlabConnector get selectedProject reqIssues ] ];
		whenListChanged: [ issueList resetSelection.
			GitlabConnector get selectedIssue: nil ];
		whenSelectedItemChanged: [ :issue | 
			GitlabConnector get selectedIssue: issue.
			issue isNil
				ifTrue: [ buttonCloseIssue enabled: false.
					buttonTimeStats enabled: false.
					buttonEdit enabled: false.
					buttonTodo enabled: false.
					buttonDelete enabled: false.
					labelIssueName label: ''.
					labelIssueState label: ''.
					labelIssueDescription text: '' ]
				ifFalse: [ buttonCloseIssue enabled: true.
					buttonTimeStats enabled: true.
					buttonEdit enabled: true.
					buttonTodo enabled: true.
					buttonDelete enabled: true.
					labelIssueName label: 'Issue: ' , issue title.
					labelIssueState label: 'State: ' , issue state.
					labelIssueDescription
						text: 'Description: ' , issue description head ] ] ]
		on: Error
		do: [  ].
	buttonNew
		action: [ | wni |
			wni := WidgetNewIssue new.
			wni openWithSpec.
			wni window
				whenClosedDo: [ issueList items: GitlabConnector get selectedProject reqIssues ] ].
	buttonCloseIssue
		action: [ | wni |
			wni := WidgetCloseIssue new openModalWithSpec ].
	buttonTimeStats
		action: [ | wni |
			wni := WidgetTimeStats new openModalWithSpec ].
	buttonEdit
		action: [ | wni |
			wni := WidgetEditIssue new.
			wni openWithSpec.
			wni window
				whenClosedDo: [ issueList items: GitlabConnector get selectedProject reqIssues ] ].
	buttonTodo action: [ WidgetTodoList new openWithSpec ].
	buttonDelete
		action: [ (UIManager default
				questionWithoutCancel: 'Are you sure you want to delete this issue?'
				title: 'Delete issue')
				ifTrue: [ GitlabConnector get selectedIssue remove.
					issueList items: GitlabConnector get selectedProject issues.
					UIManager default inform: 'Issue deleted' ] ].
	buttonReload
		action: [ | currentProject |
			currentProject := GitlabConnector get selectedProject.
			projectList items: GitlabConnector get reqProjects.
			currentProject
				ifNil: [ self initializePresenter.
					projectList resetSelection ]
				ifNotNil: [ GitlabConnector get selectedProject: currentProject.
					projectList setSelectedItem: currentProject.
					issueList items: currentProject reqIssues ].
			(GitlabConnector get user isNil
				or: [ GitlabConnector get user username isNil ])
				ifTrue: [ labelUserName label: 'User has no valid credentials' ]
				ifFalse: [ labelUserName label: 'User: ' , GitlabConnector get user username ].
			UIManager default inform: 'Reloaded' ]