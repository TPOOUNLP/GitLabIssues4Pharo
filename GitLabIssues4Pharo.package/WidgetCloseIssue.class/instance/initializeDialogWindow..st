initialization
initializeDialogWindow: aDialogPresenter
	| buttonCloseIssue buttonCancel |
	buttonCancel := self newButton
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel);
		action: [ self window close ].
	buttonCloseIssue := self newButton
		label: 'Close Issue';
		icon: (self iconNamed: #glamorousAccept).
	"action: [ self window close ]."	"Cambiar por la accion/es para dar por cerrado el issue"
	aDialogPresenter centered.
	aDialogPresenter
		addButton: buttonCloseIssue;
		addButton: buttonCancel