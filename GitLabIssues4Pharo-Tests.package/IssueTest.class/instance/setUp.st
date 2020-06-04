running
setUp

	App instance: App basicNew.
	App get url: 'https://gitlab.com/api/v4'.
	App get user: User basicNew.
	App get projects: OrderedCollection new.
	App get selectedProject: Project basicNew.
	App get issueFilters: IssueFilters new.