specs
defaultSpec
	" here we define value about windows, widget e.g "
	
	^ SpecLayout composed

	newRow: [ :row |
				row add: #screen;add: #inputTokenGitLab; add: #buttonBad ]
				origin: 0 @ 0 corner: 1 @ 0.7;

	yourself