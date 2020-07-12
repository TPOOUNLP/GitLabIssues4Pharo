tests
testIssueByIid
	| project found notFound |
	
	(ZincRequest stub httpGet: (Kind of: String)) willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '{"id":2,"title":"Two"}')).
	
	project := Project new.
	project issues add: (Issue new id: 1; iid: 2; title: 'First').
	project issues add: (Issue new id: 3; iid: 4; title: 'Second').
	project issues add: (Issue new id: 5; iid: 6; title: 'Third').
	
	found := project issueByIid: 4.
	notFound := project issueByIid: 7.
	
	self assert: found id equals: 3.
	self assert: found title equals: 'Second'.
	self assert: notFound isNil.