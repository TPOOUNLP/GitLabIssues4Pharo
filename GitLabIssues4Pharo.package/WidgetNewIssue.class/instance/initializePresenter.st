initialization
initializePresenter
	inputTitle
		whenTextChangedDo: [ buttonAccept enabled: inputTitle text ~= '' ];
		autoAccept: true;
		text: ''.
	buttonAccept
		action: [ inputTitle text = ''
				ifFalse: [ Issue titled: inputTitle text.
					inputTitle text: ''.
					UIManager default inform: 'New issue added'.
					self window
						beOk;
						close ] ].
	buttonCancel action: [ self window close ]