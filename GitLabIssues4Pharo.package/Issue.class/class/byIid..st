instance creation
byIid: anIid

	^(NeoJSONReader on: (ZincRequest httpGet: (Endpoint issueByIid: anIid)) readStream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
		nextAs: Issue