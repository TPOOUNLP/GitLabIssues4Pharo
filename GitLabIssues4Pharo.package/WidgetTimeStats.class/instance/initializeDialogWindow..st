initialization
initializeDialogWindow: aDialogPresenter
	| button |
	button := self newButton
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel);
		action: [ self window close ].
	aDialogPresenter centered.
	aDialogPresenter addButton: button