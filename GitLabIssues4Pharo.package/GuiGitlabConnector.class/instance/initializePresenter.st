initialization
initializePresenter
	"get dato from API"
	buttonBad action: [ screen label: 'Genial'  ].
	inputTokenGitLab := TextInputFieldPresenter new.
	inputTokenGitLab autoAccept: true.
	inputTokenGitLab  acceptBlock: [ :txt | screen label: txt.].
	
	
	
	