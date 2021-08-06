initialization
initializeWidgets
	labelEstimated := self newLabel.
	labelSpent := self newLabel.
	inputSpend := self newTextInput.
	buttonAddSpend := self newButton.
	inputSpend placeholder: 'New estimated ...'.
	buttonAddSpend
		label: 'Add Spend';
		icon: (self iconNamed: #add).
	inputSpend
		autoAccept: true;
		text: '0';
		placeholder: 'New spend ...';
		whenTextChangedDo: [ buttonAddSpend enabled: self inputSpend text ~= '' ]