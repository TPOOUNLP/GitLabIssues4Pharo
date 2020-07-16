initialization
initializePresenter 
 |newIssue|	

 titleinput
		text: '';
		autoAccept: true;
		acceptBlock: [ :text | self titleinput: text ].
		
 description
		text: '';
		autoAccept: true;
		acceptBlock: [ :text | self description: text ].	
		
	
buttonSave action: [ newIssue := Issue new.
							newIssue project_id: GitlabConnector get selectedProject id.
							newIssue description: self description.
							newIssue title:  self titleinput.
							newIssue save.  									
						   self window close ]