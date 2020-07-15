instance creation
get
	| result |

	result := ZincRequest httpGet: (Endpoint projectById: '18650441').
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].

	^(NeoJSONReader on: result contents readStream)
		mapInstVarsFor: Project;
		nextAs: Project