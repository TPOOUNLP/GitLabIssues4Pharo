initialization
initializeWidgets 
	
	labelTitle := self newLabel.
	inputTitle := self newTextInput.
	labelDescription := self newLabel.
	inputDescription := self newTextInput.
	labelState := self newLabel.
	droplistState := self newDropList.
	buttonAccept := self newButton. 
	buttonCancel := self newButton.

	labelTitle label: 'Title:'.
	labelDescription label: 'Description:'.
	labelState label: 'State:'.
	droplistState displayBlock: [ :option | option asString capitalized ].
		
	buttonAccept
		label: 'Accept';
		icon: (self iconNamed: #glamorousAccept).
		
	buttonCancel
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel).	