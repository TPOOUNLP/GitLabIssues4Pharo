initialization
initializeWidgets 
	
	labelTitle := self newLabel.
	inputTitle := self newTextInput.
	buttonAccept := self newButton. 
	buttonCancel := self newButton.

	labelTitle label: 'Title:'.
		
	buttonAccept
		label: 'Accept';
		icon: (self iconNamed: #glamorousAccept).
		
	buttonCancel
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel).	