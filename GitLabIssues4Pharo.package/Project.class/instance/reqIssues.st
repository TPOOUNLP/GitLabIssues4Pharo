accessing
reqIssues
	| result |
	
	result := ZincRequest httpGet: (Endpoint issuesByProjectId: self id).
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].

	^self issues: ((NeoJSONReader on: result contents readStream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
		for: #ArrayOfIssues customDo: [ :mapping | mapping listOfElementSchema: Issue ];
		nextAs: #ArrayOfIssues) asOrderedCollection;
		issues
