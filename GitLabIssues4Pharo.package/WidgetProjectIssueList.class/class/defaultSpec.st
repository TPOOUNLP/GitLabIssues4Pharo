as yet unclassified
defaultSpec

	^ SpecRowLayout composed
	
	newColumn: [ :col |
		col add: #projectList ];
	
	newColumn: [ :col |
		col add: #issueList ];

	newColumn: [ :col |
		col
			newRow: [ :row | row add: #labelUserName ] height: self toolbarHeight;
			newRow: [ :row | row add: #labelProjectTitle ] height: self toolbarHeight;
			newRow: [ :row | row add: #labelIssueName ] height: self toolbarHeight;
			newRow: [ :row | row add: #labelIssueState ] height: self toolbarHeight;
			newRow: [ :row | row add: #labelIssueDescription ] height: self toolbarHeight;
			newRow: [ :row | row newColumn: [ :c | c add: #buttonNew; add: #buttonEdit ].
								  row newColumn: [ :c | c add: #buttonDelete; add: #buttonTodo ] ] ];
		
	yourself