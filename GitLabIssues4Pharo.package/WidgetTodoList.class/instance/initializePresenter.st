initialization
initializePresenter
	
	todoList
		roots: GitlabConnector get selectedIssue description todo;
		whenSelectedItemChanged: [ :todoItem | todoItem ifNotNil: [ todoItem switch.
																					  todoList updateTree ] ];
		whenTreeUpdated: [ todoList deselectAll ].
		
		