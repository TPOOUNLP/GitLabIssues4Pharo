updating
save
	"Could have a ref to 'last saved' and compare it to 'self', thus checking for dirtiness before updating (?)"

	| json |
						
	json := String streamContents: [ :stream |
		(NeoJSONWriter on: stream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping encoder: [ :issueDescription | issueDescription asString ] ]; 
		nextPut: self ].					
						
	^self become: ((NeoJSONReader on: (ZincRequest httpPut: (Endpoint issueByIid: self iid) content: json) readStream)
						for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title state).
															(mapping mapInstVar: #description) valueSchema: IssueDescription ];
						for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
						nextAs: Issue)