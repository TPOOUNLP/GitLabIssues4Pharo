accessing
comment: aString
	| json result |

	json := String streamContents: [ :stream | 
		(NeoJSONWriter on: stream)
		for: IssueNote do: [ :mapping | mapping mapInstVar: #body ];
		nextPut: (IssueNote new: aString) ].					

	result := ZincRequest httpPost: (Endpoint notesByIssueIid: self iid) content: json.
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].
						
	^((NeoJSONReader on: result contents readStream)
						for: IssueNote do: [ :mapping | mapping mapInstVars: #(id body) ];
						nextAs: IssueNote)