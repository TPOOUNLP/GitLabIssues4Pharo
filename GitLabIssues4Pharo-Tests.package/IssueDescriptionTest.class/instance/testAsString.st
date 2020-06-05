tests
testAsString
	| raw description |
	
	raw := 'Keep this line',
		String lf , 
		'and also this one' ,
		String lf ,
		'* [x] Finished task' ,
		String lf ,
		'* [ ] Unfinished task'.	
	
	description := IssueDescription fromRaw: raw.
	
	self assert: description asString equals: raw