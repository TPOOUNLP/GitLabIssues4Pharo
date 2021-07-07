initialization
initializeWidgets
	labelEstimated := self newLabel.
	labelSpent := self newLabel.
	inputEstimate := self newNumberInput rangeMinimum: 0 maximum: 999999.	"solo positivos"
	inputSpend := self newNumberInput rangeMinimum: 0 maximum: 999999.
	buttonEstimate := self newButton.
	buttonAddSpend := self newButton.
	buttonCancel := self newButton.
	inputEstimate placeholder: 'New estimated ...'.
	inputSpend placeholder: 'New estimated ...'.
	buttonEstimate
		label: 'Estimate';
		icon: (self iconNamed: #edit).
	buttonAddSpend
		label: 'Add Spend';
		icon: (self iconNamed: #add).
	buttonCancel
		label: 'Cancel';
		icon: (self iconNamed: #glamorousCancel)