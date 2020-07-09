tests
testByState
	| issueFilters |
	
	issueFilters := IssueFilterGenerator new.
	issueFilters byState: 'closed'.
	
	self assert: (issueFilters filters at: 'state') equals: 'closed'