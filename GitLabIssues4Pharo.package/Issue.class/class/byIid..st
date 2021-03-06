instance creation
byIid: anIid
	| result |
	
	result := ZincRequest httpGet: (Endpoint issueByIid: anIid).
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].

	^(NeoJSONReader on: result contents readStream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
		nextAs: Issue