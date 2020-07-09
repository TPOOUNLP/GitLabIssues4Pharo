actions api
get
	instance ifNil: [self error: 'Instantiate with #new before!'].
       ^instance