initialization
initialize

	self user: User get.
	self projects: OrderedCollection new.
	self selectedProject: Project get.
	self issueFilters: IssueFilterGenerator new.
	self config: GCConfiguration new