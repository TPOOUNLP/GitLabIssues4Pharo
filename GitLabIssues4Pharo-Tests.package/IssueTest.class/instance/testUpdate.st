tests
testUpdate
	| issue |
	(ZincRequest stub httpPut: (Kind of: String) content: (Kind of: String)) willReturn: '{"id":1,"iid":2,"title":"aTitle","description":"New"}'.
	
	issue := Issue new id: 1; iid: 2; title: 'Title'; description: 'Old'.
	
	"At some point >> issue description: 'New'."
	issue update.
	
	self assert: issue description equals: 'New'.