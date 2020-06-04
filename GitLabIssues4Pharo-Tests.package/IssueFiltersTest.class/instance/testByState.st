tests
testByState
	| issueFilters |
	
	issueFilters := IssueFilters new.
	issueFilters byState: 'closed'.
	
	self assert: (issueFilters filters at: 'state') equals: 'closed'