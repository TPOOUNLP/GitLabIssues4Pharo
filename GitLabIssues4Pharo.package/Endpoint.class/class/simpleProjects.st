accessing
simpleProjects

	^self url , '/users/{1}/projects?simple=true' format: { GitlabConnector get user id }.