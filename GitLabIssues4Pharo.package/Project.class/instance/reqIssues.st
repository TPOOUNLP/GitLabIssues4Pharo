accessing
reqIssues
	"Returns a collection of all the issues for this project. Just a draft!"

	| endpoint |
	
	endpoint := 'https://gitlab.com/api/v4/projects/{1}/issues' , App get issueFilters get format: { self id }.
	
	"Should we extract custom mappings (or any mapping)?"
	^self issues: ((NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
		for: #ArrayOfIssues customDo: [ :mapping | mapping listOfElementSchema: Issue ];
		nextAs: #ArrayOfIssues) asOrderedCollection;
		issues
