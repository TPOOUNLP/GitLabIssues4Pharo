specs
defaultSpec
	" here we define value about windows, widget e.g "
	
	^ SpecColumnLayout composed
	
	add: #WidgetProjectIssueList;
	
	"	
	newRow: [ :row |
				row add: #listprojects;add:#listissues ]
				origin: 0 @ 0 corner: 1 @ 0.7;
	"
	"
	newRow: [ :row |
				row add: #WidgetProjectIssueList ]
				origin: 0 @ 0 corner: 1 @ 0.7;

	newRow: [ :row |
				row add: #screen;add: #inputTokenGitLab; add: #buttonBad ]
				origin: 0 @ 0 corner: 1 @ 0.14;
				
				
	newRow: [ :row |
				 row add: #screen ]
				origin: 0 @ 0.7 corner: 1 @ 0.22;			

	"
	
	

	yourself