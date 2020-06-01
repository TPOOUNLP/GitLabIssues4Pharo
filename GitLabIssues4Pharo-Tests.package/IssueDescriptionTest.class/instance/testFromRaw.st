tests
testFromRaw
	| raw description |
	
	raw := 'Keep this line',
		Character cr asString , 
		'and also this one' ,
		Character cr asString ,
		'* [x] Finished task' ,
		Character cr asString ,
		'* [ ] Unfinished task',
		Character cr asString ,
		'Not this one'.
		
	description := IssueDescription fromRaw: raw.
	
	self assert: description head equals: 'Keep this line' , Character cr asString , 'and also this one' , Character cr asString.
	self assert: description todo size equals: 2.
	self assert: description todo first asString equals: '* [x] Finished task'.
	self assert: description todo second asString equals: '* [ ] Unfinished task'.