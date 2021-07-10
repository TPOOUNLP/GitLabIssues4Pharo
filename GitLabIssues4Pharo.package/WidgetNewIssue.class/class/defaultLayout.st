specs
defaultLayout
	^ SpGridLayout new
		beRowNotHomogeneous;
		beColumnNotHomogeneous;
		column: 2 withConstraints: #beExpand;
		add: #labelTitle at: 1 @ 1;
		add: #inputTitle at: 1 @ 2;
		yourself
		"newRow: [ :row |
		row 
			add: #labelTitle right: 0.9;
			add: #inputTitle left: 0.1 ]
		height: self toolbarHeight;

	newRow: [ :row | 
		row
			add: #buttonAccept;
			add: #buttonCancel ]
		height: self toolbarHeight;
		
	yourself"