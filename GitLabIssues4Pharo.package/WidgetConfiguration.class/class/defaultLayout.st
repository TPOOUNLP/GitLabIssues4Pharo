specs
defaultLayout
	^ SpGridLayout new
		beRowNotHomogeneous;
		beColumnNotHomogeneous;
		column: 2 withConstraints: #beExpand;
		add: #labelInputToken at: 1 @ 1;
		add: #inputToken at: 2 @ 1;
		add: #checkboxListenCommitEvent at: 1 @ 2;
		yourself