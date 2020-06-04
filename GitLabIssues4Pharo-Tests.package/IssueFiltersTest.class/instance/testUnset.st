tests
testUnset
	| issueFilters |
	
	issueFilters := IssueFilters new.
	issueFilters set: 'a' value: 'aaa'.
	issueFilters set: 'b' value: 'bbb'.
	issueFilters set: 'c' value: 'ccc'.
	issueFilters unset: 'b'.
	
	self assert: issueFilters filters size = 2.	
	self should: [issueFilters filters at: 'b'] raise: Error