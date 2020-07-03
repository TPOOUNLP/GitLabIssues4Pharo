tests
testSetValue
	| issueFilters |
	
	issueFilters := IssueFilterGenerator new.
	issueFilters set: 'a' value: 'aaa'.
	issueFilters set: 'b' value: 'bbb'.
	issueFilters set: 'a' value: 'ccc'.
	
	self assert: issueFilters filters size = 2.	
	self assert: (issueFilters filters at: 'a') equals: 'ccc'.
	self assert: (issueFilters filters at: 'b') equals: 'bbb'.