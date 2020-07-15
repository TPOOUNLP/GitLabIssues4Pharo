initialization
initializePresenter

	inputToken
		text: GitlabConnector get config publicAccessToken;
		autoAccept: true;
		acceptBlock: [ :text | GitlabConnector get config publicAccessToken: text ].
		
	checkboxListenCommitEvent
		state: GitlabConnector get config isListeningForCommitEvent;
		whenActivatedDo: [ GitlabConnector get subscribeToCommitEvent ];
		whenDeactivatedDo: [ GitlabConnector get unsubscribeToCommitEvent ].
		
	buttonImport action: [ GitlabConnector get config import.
								  self initializePresenter ].
							
	buttonExport action: [ GitlabConnector get config export.
								  self window close.
								  UIManager default inform: 'Configuration saved'. ]