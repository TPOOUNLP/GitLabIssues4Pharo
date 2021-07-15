specs
defaultLayout
	^ SpGridLayout new
		beRowNotHomogeneous;
		beColumnNotHomogeneous;
		column: 2 withConstraints: #beExpand;
		add: #labelTitle at: 1 @ 1;
		add: #inputTitle at: 1 @ 2;
		yourself