accessing
issues
	"Returns a collection of all the issues in the repo. No project object. No nothing. Just a draft!"

	| projectId aUrl |
	
	projectId := Project new id.
	aUrl := 'https://gitlab.com/api/v4/projects/{1}/issues' format: { projectId }.
	
	^ZnClient new
	url: aUrl;
	setBearerAuthentication: self token;
	get;
	response.