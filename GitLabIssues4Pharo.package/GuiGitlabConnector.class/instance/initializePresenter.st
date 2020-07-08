initialization
initializePresenter
	"get dato from API"
	buttonBad action: [ screen label: 'Genial'].
	"listprojects  	items: (1 to: 50) asOrderedCollection."
	listprojects items: GitlabConnector get reqProjects. 
	" pass a collection "
	listissues  items: (1 to: 3) asOrderedCollection.
		
		
		
		
	inputTokenGitLab := TextInputFieldPresenter new.
	inputTokenGitLab autoAccept: true.
	inputTokenGitLab  acceptBlock: [ :txt | screen label: txt.].
	
	
	
	