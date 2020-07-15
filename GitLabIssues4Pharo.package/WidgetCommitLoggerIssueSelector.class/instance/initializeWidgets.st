initialization
initializeWidgets

	issueSelector := self instantiate: WidgetProjectIssueList.
	buttonAccept := self newButton.
	buttonCancel := self newButton.
	
	buttonAccept
		label: 'Log commit';
		icon: (self iconNamed: #glamorousAccept).
		
	buttonCancel
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel).
	
	self focusOrder
		add: issueSelector;
		add: buttonAccept;
		add: buttonCancel.