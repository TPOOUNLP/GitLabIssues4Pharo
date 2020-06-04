tests
testByAssignee
	| issueFilters |
	
	issueFilters := IssueFilters new.
	issueFilters byAssignee: 6.
	
	self assert: (issueFilters filters at: 'assignee_id') = '6'