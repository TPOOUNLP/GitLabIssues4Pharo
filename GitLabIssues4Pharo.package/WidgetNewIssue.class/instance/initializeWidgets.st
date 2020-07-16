initialization
initializeWidgets 
	
	labelTitle := self newLabel.
	inputTitle := self newTextInput.
	buttonAccept := self newButton. 
	buttonCancel := self newButton.

	labelTitle label: 'Title:'.
		
	buttonAccept
		label: 'Aceptar';
		icon: (self iconNamed: #glamorousAccept).
		
	buttonCancel
		label: 'Cancelar';
		icon: (self iconNamed: #glamorousCancel).	



 	
	