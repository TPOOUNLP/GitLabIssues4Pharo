initialization
initializeWidgets
	labelEstimated := self newLabel.
	labelSpent := self newLabel.
	inputEstimate := self newTextInput.	"solo positivos"
	inputSpend := self newTextInput.
	buttonEstimate := self newButton.
	buttonAddSpend := self newButton.
	buttonCancel := self newButton.
	inputEstimate
		autoAccept: true;
		text: '0';
		placeholder: 'New estimated ...';
		whenTextChangedDo: [ buttonEstimate enabled: self inputEstimate text ~= '' ].
	inputSpend
		autoAccept: true;
		text: '0';
		placeholder: 'New spend ...';
		whenTextChangedDo: [ buttonAddSpend enabled: self inputSpend text ~= '' ].
	buttonEstimate
		label: 'Estimate';
		icon: (self iconNamed: #edit).
	buttonAddSpend
		label: 'Add Spend';
		icon: (self iconNamed: #add).
	buttonCancel
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel)