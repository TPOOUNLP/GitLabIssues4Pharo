specs
defaultSpec

	^ SpecColumnLayout composed
	
	newRow: [ :row | row add: #todoList ];
	
	newRow: [ :row |
		row
			add: #todoTitleInput right: 0.25;
			add: #buttonAdd left: 0.75 ]
		height: self toolbarHeight;
		
	newRow: [ :row |
		row add: #buttonAccept; add: #buttonCancel ]
		height: self toolbarHeight;
	
	yourself