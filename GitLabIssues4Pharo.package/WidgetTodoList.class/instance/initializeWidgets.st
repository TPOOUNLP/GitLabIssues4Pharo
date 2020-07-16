initialization
initializeWidgets

	todoList := self newTree.
	todoTitleInput := self newTextInput.
	buttonAdd := self newButton.
	buttonAccept := self newButton.
	buttonCancel := self newButton.
	
	todoList
		autoDeselection: true;
		displayBlock: [ :todoItem | todoItem text ];
		iconBlock: [ :todoItem | todoItem done
											ifTrue: [ self iconNamed: #checkboxSelected ]
											ifFalse: [ self iconNamed: #checkboxUnselected ] ].
	
	todoTitleInput ghostText: 'New ToDo...'.
	buttonAdd label: 'Add'; icon: (self iconNamed: #glamorousAdd).
	buttonAccept label: 'Save'; icon: (self iconNamed: #glamorousSave).
	buttonCancel label: 'Cancel'; icon: (self iconNamed: #glamorousCancel).
	
	self focusOrder
		add: todoList;
		add: todoTitleInput;
		add: buttonAdd;
		add: buttonAccept;
		add: buttonCancel.