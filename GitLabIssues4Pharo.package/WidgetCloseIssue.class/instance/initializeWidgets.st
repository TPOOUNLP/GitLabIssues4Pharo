initialization
initializeWidgets
	labelEstimated := self newLabel.
	labelSpent := self newLabel.
	inputSpend := self newNumberInput rangeMinimum: 0 maximum: 999999.	"solo positivos"
	buttonAddSpend := self newButton.
	inputSpend placeholder: 'New estimated ...'.
	buttonAddSpend
		label: 'Add Spend';
		icon: (self iconNamed: #add).