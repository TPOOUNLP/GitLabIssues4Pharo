initialization
initializePresenter

	self issueWorkingCopy: GitlabConnector get selectedIssue deepCopy.

	inputTitle
		autoAccept: true;
		text: self issueWorkingCopy title;
		whenTextChanged: [ buttonAccept enabled: inputTitle text ~= ''];
		acceptBlock: [ :text | self issueWorkingCopy title: text ].
		
	inputDescription
		autoAccept: true;
		text: self issueWorkingCopy description head;
		whenTextChanged: [ buttonAccept enabled: inputDescription text ~= ''];
		acceptBlock: [ :text | self issueWorkingCopy description head: text ].
		
	droplistState
		items: { 'opened' . 'closed' } asOrderedCollection;
		setSelectedItem: self issueWorkingCopy state;
		whenSelectedItemChanged: [ :item | self issueWorkingCopy state: item ].
		
	buttonAccept
		action: [ inputTitle text = '' ifFalse: [ GitlabConnector get selectedIssue title: self issueWorkingCopy title.
															  GitlabConnector get selectedIssue description head: self issueWorkingCopy description head.
															  GitlabConnector get selectedIssue state: self issueWorkingCopy state.
															  GitlabConnector get selectedIssue save.	
															  self window close.
															  UIManager default inform: 'Issue updated'. ] ].
							
	buttonCancel action: [ self window close ]