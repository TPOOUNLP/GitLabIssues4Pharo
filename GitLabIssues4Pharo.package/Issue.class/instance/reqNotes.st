as yet unclassified
reqNotes
	| result |
	
	result := ZincRequest httpGet: (Endpoint notes: self).
	result isSuccess ifFalse: [ GitlabApiUnreachable signal ].

	^self notes: ((NeoJSONReader on: result contents readStream)
		for: IssueNote do: [ :mapping | mapping mapInstVars: #(id body) ];
		for: #ArrayOfIssueNotes customDo: [ :mapping | mapping listOfElementSchema: IssueNote ];
		nextAs: #ArrayOfIssueNotes) asOrderedCollection;
		notes
	