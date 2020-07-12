updating
save
	| json result |
						
	json := String streamContents: [ :stream |
		(NeoJSONWriter on: stream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping encoder: [ :issueDescription | issueDescription asString ] ]; 
		nextPut: self ].					
					
	result := ZincRequest httpPut: (Endpoint issueByIid: self iid) content: json.
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].				
						
	^self become: ((NeoJSONReader on: result contents readStream)
						for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title state).
															(mapping mapInstVar: #description) valueSchema: IssueDescription ];
						for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
						nextAs: Issue)