initialization
initializePresenter

	[ GitlabConnector new.

	projectList
		items: GitlabConnector get reqProjects;
		whenListChanged: [ projectList resetSelection ];
		whenSelectedItemChanged: [ :project | GitlabConnector get selectedProject: project.
														 issueList items: GitlabConnector get selectedProject reqIssues ].
	
	issueList
		items: GitlabConnector get selectedProject reqIssues;
		whenListChanged: [ issueList resetSelection.
								 GitlabConnector get selectedIssue: nil ];
		whenSelectedItemChanged: [ :issue | GitlabConnector get selectedIssue: issue ].
	] on: Error do: [  ] 
