initialization
initializeWidgets

	projectList := self newList.
	issueList := self newList.
	
	projectList displayBlock: [ :project | project name ].
	issueList displayBlock: [ :issue | issue title ].
	
	self focusOrder
		add: projectList;
		add: issueList.
