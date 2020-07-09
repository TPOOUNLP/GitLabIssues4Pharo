as yet unclassified
reqNotes
	"Returns a collection of all notes for this issue"

	^self notes: ((NeoJSONReader on: (ZincRequest httpGet: (Endpoint notes: self)) readStream)
		for: IssueNote do: [ :mapping | mapping mapInstVars: #(id body) ];
		for: #ArrayOfIssueNotes customDo: [ :mapping | mapping listOfElementSchema: IssueNote ];
		nextAs: #ArrayOfIssueNotes) asOrderedCollection;
		notes
	