initialization
initializePresenter
	
	buttonConfig
		action: [ WidgetConfiguration new openModalWithSpec ].
		
	buttonSync
		action: [ GitlabConnector new.
					 UIManager default inform: 'Synchronized' ]