accessing
comment: aString
	| json |

	json := String streamContents: [ :stream | 
		(NeoJSONWriter on: stream)
		for: IssueNote do: [ :mapping | mapping mapInstVar: #body ];
		nextPut: (IssueNote new: aString) ].					
						
	^((NeoJSONReader on: (ZincRequest httpPost: (Endpoint notesByIssueIid: self iid) content: json) readStream)
						for: IssueNote do: [ :mapping | mapping mapInstVars: #(id body) ];
						nextAs: IssueNote)