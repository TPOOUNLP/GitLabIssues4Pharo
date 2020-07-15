specs
defaultSpec

	^ SpecColumnLayout composed
	
	newRow: [ :row |
		row 
			newColumn: [ :col | col add: #labelInputToken ] right: 0.7;
			newColumn: [ :col | col add: #inputToken ] left: 0.3 ]
		height: self toolbarHeight;
	
	newRow: [ :row |
		row add: #checkboxListenCommitEvent ]
		height: self toolbarHeight;
		
	newRow: [ :row |
		row add: #buttonImport; add: #buttonExport ]
		height: self toolbarHeight;
	
	yourself