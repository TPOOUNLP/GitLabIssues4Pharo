instance creation
titled: aString
	"Returns a new Issue with the given title."

	| json |
	
	json := NeoJSONWriter toString: { #title -> aString } asDictionary.
	
	^(NeoJSONReader on: (ZincRequest httpPost: (Endpoint issues) content: json) readStream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid project_id title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
		nextAs: Issue