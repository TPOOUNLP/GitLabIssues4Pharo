running
setUp

	GitlabConnector instance: GitlabConnector basicNew.
	GitlabConnector get user: User basicNew.
	GitlabConnector get projects: OrderedCollection new.
	GitlabConnector get selectedProject: (Project basicNew id: 1).
	GitlabConnector get issueFilters: IssueFilterGenerator new.