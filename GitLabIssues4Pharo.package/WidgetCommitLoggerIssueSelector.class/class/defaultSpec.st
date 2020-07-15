specs
defaultSpec

	^ SpecColumnLayout composed

	add: #issueSelector;

	newRow: [ :row |
		row add: #buttonAccept right: 0.67; add: #buttonCancel left: 0.33 right: 0.33 ]
		height: self toolbarHeight;
	
	yourself