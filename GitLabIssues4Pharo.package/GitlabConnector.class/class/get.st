actions api
get
	instance ifNil: [self error: 'Instantiate with #withToken before!'].
       ^instance