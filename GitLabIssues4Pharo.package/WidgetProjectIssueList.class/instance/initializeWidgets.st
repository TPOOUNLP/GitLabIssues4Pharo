initialization
initializeWidgets

	projectList := self newList.
	issueList := self newList.
	labelUserName := self newLabel.
	labelProjectTitle := self newLabel.
	labelIssueName := self newLabel.
	labelIssueState := self newLabel.
	labelIssueDescription := self newLabel.
	buttonNew := self newButton.
	buttonDelete := self newButton.
	buttonEdit := self newButton.
	buttonTodo := self newButton.
	
	projectList displayBlock: [ :project | project name ].
	issueList displayBlock: [ :issue | issue title ].
	labelUserName label: 'User: ' , GitlabConnector get user username.
	buttonNew label: 'New'; icon: (self iconNamed: #glamorousAdd).
	buttonDelete label: 'Delete'; icon: (self iconNamed: #glamorousTrash).
	buttonEdit label: 'Edit'; icon: (self iconNamed: #glamorousEdit).
	buttonTodo label: 'ToDo'; icon: (self iconNamed: #checkboxSelected).
	
	self focusOrder
		add: projectList;
		add: issueList;
		add: buttonNew;
		add: buttonDelete;
		add: buttonEdit;
		add: buttonTodo.