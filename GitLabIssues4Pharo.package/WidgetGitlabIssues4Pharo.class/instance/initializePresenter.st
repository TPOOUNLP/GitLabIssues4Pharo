initialization
initializePresenter
	
	buttonConfig
		action: [ WidgetConfiguration new openWithSpec ].
		
	buttonSync
		action: [ GitlabConnector new.
					 UIManager default inform: 'Synchronized' ]