specs
defaultSpec

	^ SpecColumnLayout composed

	add: #issueSelector;

	newRow: [ :row |
		row add: #buttonAccept; add: #buttonCancel ]
		height: self toolbarHeight;
	
	yourself