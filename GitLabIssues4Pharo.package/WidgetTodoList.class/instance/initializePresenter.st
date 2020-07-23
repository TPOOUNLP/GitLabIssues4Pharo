initialization
initializePresenter
	
	self todoWorkingCopy: GitlabConnector get selectedIssue description todo shallowCopy.
	
	todoList
		roots: self todoWorkingCopy;
		whenSelectedItemChanged: [ :todoItem | todoItem ifNotNil: [ todoItem switch.
																					  todoList updateTree ] ];
		whenTreeUpdated: [ todoList deselectAll ].
	
	todoTitleInput
		autoAccept: true;
		text: nil.
	
	buttonAdd
		action: [ todoTitleInput text ifNotNil: [ self todoWorkingCopy add: (TodoListItem withText: (todoTitleInput text)).
															  todoTitleInput text: nil.
															  todoList updateTree ] ].
	
	buttonAccept
		action: [ GitlabConnector get selectedIssue description todo: self todoWorkingCopy.
					 GitlabConnector get selectedIssue save.
					 self window close.
					 UIManager default inform: 'ToDo list updated'. ].
	
	buttonCancel
		action: [ self window close ]
		
		