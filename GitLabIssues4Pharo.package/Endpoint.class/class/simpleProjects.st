accessing
simpleProjects

	^self url , '/users/{1}/projects?simple=true' format: { App get user id }.