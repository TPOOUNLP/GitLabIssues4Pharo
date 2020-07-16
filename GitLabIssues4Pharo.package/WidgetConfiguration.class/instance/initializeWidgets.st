initialization
initializeWidgets

	labelInputToken := self newLabel.
	inputToken := self newTextInput.
	checkboxListenCommitEvent := self newCheckBox.
	buttonImport := self newButton.
	buttonExport := self newButton.
	
	labelInputToken label: 'Public access token:'.
	inputToken ghostText: 'Your token...'.
	checkboxListenCommitEvent label: 'Log new commits as comments on an issue'.
	
	buttonImport
		label: 'Import';
		icon: (self iconNamed: #glamorousOpen).
		
	buttonExport
		label: 'Save';
		icon: (self iconNamed: #glamorousSave).
	
	self focusOrder
		add: labelInputToken;
		add: inputToken;
		add: checkboxListenCommitEvent;
		add: buttonImport;
		add: buttonExport.