initialization
initializeWidgets

	labelInputToken := self newLabel.
	inputToken := self newTextInput.
	checkboxListenCommitEvent := self newCheckBox.
	buttonImport := self newButton.
	buttonExport := self newButton.
	
	labelInputToken label: 'Public access token:'.
	inputToken ghostText: 'Ingrese su token'.
	checkboxListenCommitEvent label: 'Registrar nuevos commits como comentario en un Issue.'.
	
	buttonImport
		label: 'Importar';
		icon: (self iconNamed: #glamorousOpen).
		
	buttonExport
		label: 'Guardar';
		icon: (self iconNamed: #glamorousSave).
	
	self focusOrder
		add: labelInputToken;
		add: inputToken;
		add: checkboxListenCommitEvent;
		add: buttonImport;
		add: buttonExport.