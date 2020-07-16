specs
defaultSpec
	^ SpecColumnLayout composed
	
	add: #projectIssueList ;
				
	newRow: [ :row |
		row add: #buttonConfig right: 0.67; add: #buttonSync left: 0.33 right: 0.33  ]
		height: self toolbarHeight;			
								
	yourself