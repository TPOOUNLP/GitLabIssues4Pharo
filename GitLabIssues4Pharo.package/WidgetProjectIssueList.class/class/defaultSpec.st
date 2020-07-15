as yet unclassified
defaultSpec

	^ SpecColumnLayout composed
	
	newRow: [ :row | row
		add: #droplistStateLabel right: 0.9;
		add: #droplistState left: 0.1 right: 0.75;
		add: #checkboxAssignee left: 0.25 right: 0.1;
		add: #buttonReload left: 0.9 ]
	height: self toolbarHeight;
	
	newRow: [ :main | main
	
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
								  row newColumn: [ :c | c add: #buttonDelete; add: #buttonTodo ] ] ]
	];	
	yourself

"defaultSpec

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
		
	yourself"