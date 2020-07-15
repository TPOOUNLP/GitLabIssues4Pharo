initialization
initializePresenter
	"get dato from API"
	"buttonBad action: [ screen label: 'Genial']."
	
	buttonSync action:[ widgetcombine initializePresenter ].
	buttonConfig action: [ WidgetConfiguration new openWithSpec ]
	
	"listprojects  	items: (1 to: 50) asOrderedCollection."
	
	"
	inputTokenGitLab := TextInputFieldPresenter new.
	inputTokenGitLab autoAccept: true.
	inputTokenGitLab  acceptBlock: [ :txt | screen label: txt.].
	
	"
	
	