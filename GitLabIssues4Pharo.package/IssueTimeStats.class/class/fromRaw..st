instance creation
fromRaw: aDictionary
	| item tt te htt hte|

	item := IssueTimeStats new.
	
	tt := aDictionary at: 'total_time_spent'.
	te := aDictionary at: 'time_estimate'.
	htt := aDictionary at: 'human_total_time_spent'.
	hte := aDictionary at: 'human_time_estimate'.
	
	item total_time_spent: tt.
	item time_estimate: te.
	item human_total_time_spent: htt.
	item human_time_estimate: hte.
	
	^item