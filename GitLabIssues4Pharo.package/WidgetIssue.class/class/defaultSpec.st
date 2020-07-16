specs
defaultSpec 
		^ SpecColumnLayout composed
	
	newRow: [ :row |
		row 
			newColumn: [ :col | col add: #labeltitle ] right: 0.7;
			newColumn: [ :col | col add: #titleinput ] left: 0.3 ]
		height: self toolbarHeight;
	newRow: [ :row |
		row 
			newColumn: [ :col | col add: #labeldescription ] right: 0.7;
			newColumn: [ :col | col add: #description ] left: 0.3 ]
		height: self toolbarHeight;

	newRow: [ :row |
		row 
			newColumn: [ :col | col add: #buttonSave ] left: 0.3 ]
		height: self toolbarHeight;


		
	yourself