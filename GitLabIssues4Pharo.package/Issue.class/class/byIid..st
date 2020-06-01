instance creation
byIid: anIid
	"Candidate for deprecation. Implemented at Project>>#IssueById:"

	| endpoint |
	
	endpoint := 'https://gitlab.com/api/v4/projects/{1}/issues/{2}' format: { App get selectedProject id . anIid }.
	
	"Should we extract custom mappings (or any mapping)?"	
	^(NeoJSONReader on: (ZincRequest httpGet: endpoint) readStream)
		for: Issue do: [ :mapping | mapping mapInstVars: #(id iid title state).
											(mapping mapInstVar: #description) valueSchema: IssueDescription ];
		for: IssueDescription customDo: [ :mapping | mapping decoder: [ :string | IssueDescription fromRaw: string ] ];
		nextAs: Issue