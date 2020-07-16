specs
defaultSpec 
	^ SpecColumnLayout composed
	
	newRow: [ :row |
		row 
			add: #labelTitle right: 0.85;
			add: #inputTitle left: 0.15 ]
		height: self toolbarHeight;
	
	newRow: [ :row |
		row 
			add: #labelDescription right: 0.75;
			add: #inputDescription left: 0.25 ]
		height: self toolbarHeight;
	
	newRow: [ :row |
		row 
			add: #labelState right: 0.85;
			add: #droplistState left: 0.15 ]
		height: self toolbarHeight;
		
	newRow: [ :row | 
		row
			add: #buttonAccept;
			add: #buttonCancel ]
		height: self toolbarHeight;
		
	yourself