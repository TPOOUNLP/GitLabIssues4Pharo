accessing
reqIssues
	"Returns a collection of all the issues for this project. Just a draft!"

	^self issues: ((NeoJSONReader on: (ZincRequest httpGet: (Endpoint issuesByProjectId: self id)) readStream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
		for: #ArrayOfIssues customDo: [ :mapping | mapping listOfElementSchema: Issue ];
		nextAs: #ArrayOfIssues) asOrderedCollection;
		issues
