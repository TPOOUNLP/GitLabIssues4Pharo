tests
testGet
	| issueFilters emptyIssueFilters |
	
	issueFilters := IssueFilterGenerator new.
	emptyIssueFilters := IssueFilterGenerator new.
	
	issueFilters set: 'a' value: 'aaa'.
	issueFilters set: 'b' value: 'bbb'.
	issueFilters set: 'c' value: 'ccc'.
	
	self assert: emptyIssueFilters get equals: ''.
	self assert: issueFilters get equals: '?a=aaa&b=bbb&c=ccc'.