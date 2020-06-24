accessing
simpleProjectById: anId

	^self url , '/projects/{1}?simple=true' format: { anId }