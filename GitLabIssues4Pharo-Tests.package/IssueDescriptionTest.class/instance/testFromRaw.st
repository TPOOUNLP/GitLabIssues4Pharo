tests
testFromRaw
	| raw description |
	
	raw := 'Keep this line',
		String lf , 
		'and also this one' ,
		String lf ,
		'* [x] Finished task' ,
		String lf ,
		'* [ ] Unfinished task',
		String lf ,
		'Not this one'.
		
	description := IssueDescription fromRaw: raw.
	
	self assert: description head equals: 'Keep this line' , String lf , 'and also this one' , String lf.
	self assert: description todo size equals: 2.
	self assert: description todo first asString equals: '* [x] Finished task'.
	self assert: description todo second asString equals: '* [ ] Unfinished task'.