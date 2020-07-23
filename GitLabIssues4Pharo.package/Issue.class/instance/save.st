updating
save
	| workingCopy json result |
						
	workingCopy := self shallowCopy.
	workingCopy state: (self state = 'opened' ifTrue: [ 'reopen' ] ifFalse: [ 'close' ]).					
						
	json := String streamContents: [ :stream |
		(NeoJSONWriter on: stream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title).
											mapping mapInstVar: #state to: 'state_event'.
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping encoder: [ :issueDescription | issueDescription asString ] ]; 
		nextPut: workingCopy ].					
					
	result := ZincRequest httpPut: (Endpoint issueByIid: self iid) content: json.
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].				
						
	^self become: ((NeoJSONReader on: result contents readStream)
						for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title state).
															(mapping mapInstVar: #description) valueSchema: IssueDescription ];
						for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
						nextAs: Issue)