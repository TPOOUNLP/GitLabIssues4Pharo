tests
testSave
	| issue |
	
	(ZincRequest stub httpPut: (Kind of: String) content: (Kind of: String)) willReturn: 
		((ZnResponse statusCode: 200) entity: (ZnEntity json: '{"id":1,"iid":2,"title":"aTitle","description":"New"}')).
	
	issue := Issue new id: 1; iid: 2; title: 'Title'; description: IssueDescription new.
	issue description head: 'Old'.
	
	"At some point >> issue description head: 'New'."
	issue save.
	
	self assert: issue description head equals: 'New' , String lf.