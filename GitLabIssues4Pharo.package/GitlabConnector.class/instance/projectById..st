accessing
projectById: anId
	| result |

	result := ZincRequest httpGet: (Endpoint simpleProjectById: anId).
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].	

	^(NeoJSONReader on: result contents readStream)
		mapInstVarsFor: Project;
		nextAs: Project