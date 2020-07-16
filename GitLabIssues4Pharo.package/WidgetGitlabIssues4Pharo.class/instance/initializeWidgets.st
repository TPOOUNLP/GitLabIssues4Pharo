initialization
initializeWidgets

	projectIssueList := self instantiate: WidgetProjectIssueList.
	buttonConfig := self newButton.
	buttonSync := self newButton.
	
	buttonConfig
		label: 'Configuration';
		icon: (self iconNamed: #configuration).
		
	buttonSync
		label: 'Synchronize';
		icon: (self iconNamed: #glamorousExample).