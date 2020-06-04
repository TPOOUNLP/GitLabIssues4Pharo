initialization
initialize

	self url: 'https://gitlab.com/api/v4'.
	self user: User get.
	self projects: OrderedCollection new.
	self selectedProject: Project get.
	self issueFilters: IssueFilters new