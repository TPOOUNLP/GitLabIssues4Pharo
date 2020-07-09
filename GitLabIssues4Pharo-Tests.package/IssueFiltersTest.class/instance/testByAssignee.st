tests
testByAssignee
	| issueFilters |
	
	issueFilters := IssueFilterGenerator new.
	issueFilters byAssignee: 6.
	
	self assert: (issueFilters filters at: 'assignee_id') = '6'