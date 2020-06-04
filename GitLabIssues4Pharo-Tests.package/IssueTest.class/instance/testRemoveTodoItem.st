tests
testRemoveTodoItem
	| issue |
	
	issue := Issue new id: 1; iid: 2; title: 'Title'; description: (IssueDescription new head: 'Description Head').
	
	issue addTodoItem: (TodoListItem withText: 'Task 1').
	issue addTodoItem: (TodoListItem withText: 'Task 2').
	issue removeTodoItem: (TodoListItem withText: 'Task 1').
	
	self assert: issue todos size = 1.
	self assert: issue todos first text equals: 'Task 2'.