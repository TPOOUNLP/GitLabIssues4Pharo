specs
defaultSpec 
	^ SpecColumnLayout composed
	
	newRow: [ :row |
		row 
			add: #labelTitle right: 0.9;
			add: #inputTitle left: 0.1 ]
		height: self toolbarHeight;

	newRow: [ :row | 
		row
			add: #buttonAccept;
			add: #buttonCancel ]
		height: self toolbarHeight;
		
	yourself