as yet unclassified
defaultSpec

	^ SpecLayout composed
	
	newRow: [ :row |
		row add: #projectList; add: #issueList ]
		origin: 0 @ 0 corner: 1 @ 1;
	
	yourself