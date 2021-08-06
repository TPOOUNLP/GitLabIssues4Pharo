initialization
initializeDialogWindow: aDialogPresenter
	| buttonCloseIssue buttonCancel |
	buttonCancel := self newButton
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel);
		action: [ self window close ].
	buttonCloseIssue := self newButton
		label: 'Close Issue';
		icon: (self iconNamed: #glamorousAccept);
		action: [ GitlabConnector get selectedIssue closeIssue.
			self window close.
			UIManager default inform: 'Issue closed.' ].
	aDialogPresenter centered.
	aDialogPresenter
		addButton: buttonCloseIssue;
		addButton: buttonCancel