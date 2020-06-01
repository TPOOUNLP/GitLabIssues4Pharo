tests
testAsString
	| raw description |
	
	raw := 'Keep this line',
		Character cr asString , 
		'and also this one' ,
		Character cr asString ,
		'* [x] Finished task' ,
		Character cr asString ,
		'* [ ] Unfinished task'.	
	
	description := IssueDescription fromRaw: raw.
	
	self assert: description asString equals: raw