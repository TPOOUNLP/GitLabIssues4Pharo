initialization
initializeWidgets

	issueSelector := self instantiate: WidgetProjectIssueList.
	buttonAccept := self newButton.
	buttonCancel := self newButton.
	
	buttonAccept
		label: 'Aceptar';
		icon: (self iconNamed: #glamorousAccept).
		
	buttonCancel
		label: 'Cancelar';
		icon: (self iconNamed: #glamorousCancel).
	
	self focusOrder
		add: issueSelector;
		add: buttonAccept;
		add: buttonCancel.