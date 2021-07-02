initialization
initializePresenter

	inputTitle
		whenTextChanged: [ buttonAccept enabled: inputTitle text ~= ''];
		autoAccept: true;
		text: ''.
		
	buttonAccept
		action: [ inputTitle text = '' ifFalse: [ self window close.
															  UIManager default inform: 'Issue closed'. ] ].
							
	buttonCancel action: [ self window close ]