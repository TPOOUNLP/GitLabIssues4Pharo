initialization
initializePresenter

	inputTitle
		whenTextChanged: [ buttonAccept enabled: inputTitle text ~= ''];
		autoAccept: true;
		text: ''.
		
	buttonAccept
		action: [ inputTitle text = '' ifFalse: [ Issue titled: inputTitle text.
								  							  inputTitle text: ''.		
															  self window close.
															  UIManager default inform: 'New issue added'. ] ].
							
	buttonCancel action: [ self window close ]