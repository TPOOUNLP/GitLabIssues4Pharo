specs
defaultLayout
	^ SpGridLayout new
		column: 2 withConstraints: #beExpand;
		add: #labelEstimated at: 1 @ 1;
		add: #labelSpent at: 2 @ 1;
		"add: #inputEstimate at: 1 @ 2;"
		add: #inputSpend at: 2 @ 2;
	"	add: #buttonEstimate at: 1 @ 3;"
		add: #buttonAddSpend at: 2 @ 3;
			yourself