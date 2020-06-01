updating
save
	"Could have a ref to 'last saved' and compare it to 'self', thus checking for dirtiness before updating (?)"

	| endpoint json |
	
	endpoint := App get url , '/projects/{1}/issues/{2}' format: {App get selectedProject id . self iid}.
	
	"Should we extract custom mappings (or any mapping)?"
	"json := String streamContents: [ :stream |
		(NeoJSONWriter on: stream)
		mapInstVarsFor: Issue;
		nextPut: self ]."
	
	"^self become: ((NeoJSONReader on: (ZincRequest httpPut: endpoint content: json) readStream)
						mapInstVarsFor: Issue;
						nextAs: Issue)"
						
	json := String streamContents: [ :stream |
		(NeoJSONWriter on: stream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping encoder: [ :issueDescription | issueDescription asString ] ]; 
		nextPut: self ].					
						
	^self become: ((NeoJSONReader on: (ZincRequest httpPut: endpoint content: json) readStream)
						for: Issue do: [ :mapping | mapping mapInstVars: #(id iid title state).
															(mapping mapInstVar: #description) valueSchema: IssueDescription ];
						for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
						nextAs: Issue)