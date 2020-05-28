running
setUp
	User stub get willReturn: (User basicNew).
	Project stub get willReturn: (Project basicNew).
	
	App withToken: 'aToken'.