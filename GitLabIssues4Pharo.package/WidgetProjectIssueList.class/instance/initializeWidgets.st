initialization
initializeWidgets

	[ GitlabConnector get ] on: Error do: [ GitlabConnector new ].

	droplistStateLabel := self newLabel.
	droplistState := self newDropList.
	checkboxAssignee := self newCheckBox.
	projectList := self newList.
	issueList := self newList.
	labelUserName := self newLabel.
	labelProjectTitle := self newLabel.
	labelIssueName := self newLabel.
	labelIssueState := self newLabel.
	labelIssueDescription := self newText.
	buttonCloseIssue := self newButton.
	buttonTimeStats := self newButton.
	buttonNew := self newButton.
	buttonDelete := self newButton.
	buttonEdit := self newButton.
	buttonTodo := self newButton.
	buttonReload := self newButton.
	
	droplistStateLabel label: 'Only with state:'.
	droplistState displayBlock: [ :option | option asString capitalized ].
	checkboxAssignee label: 'Only assigned to me.'.
	projectList displayBlock: [ :project | project name ]; icons: [ self iconNamed: #emptyPackage ].
	issueList displayBlock: [ :issue | issue title ]; icons: [ self iconNamed: #announcement ].
	buttonCloseIssue label: 'Close'; icon: (self iconNamed: #glamorousCancel ).
	buttonTimeStats label: 'Time Stats'; icon: (self iconNamed: #glamorousAlarm  ).
	buttonNew label: 'New'; icon: (self iconNamed: #add).
	buttonDelete label: 'Delete'; icon: (self iconNamed: #glamorousTrash).
	buttonEdit label: 'Edit'; icon: (self iconNamed: #glamorousEdit).
	buttonTodo label: 'ToDo'; icon: (self iconNamed: #checkboxSelected).
	buttonReload label: 'Reload'; icon: (self iconNamed: #glamorousRefresh).
	(GitlabConnector get user isNil or: [ GitlabConnector get user username isNil ])
		ifTrue: [ labelUserName label: 'User has no valid credentials' ]
		ifFalse: [ labelUserName label: 'User: ' , GitlabConnector get user username ].
	
	self focusOrder
		add: projectList;
		add: issueList;
		add: buttonNew;
		add: buttonCloseIssue;
		add: buttonTimeStats;
		add: buttonDelete;
		add: buttonEdit;
		add: buttonTodo.