initialization
initializeWidgets
	screen := self newLabel.
	buttonHappy := self newButton.
	buttonNeutral := self newButton.
	buttonBad := self newButton.
	
	screen label: 'Please give us your feedback.'.
	buttonHappy label: 'Happy';
	icon: (self iconNamed: #thumbsUp).
	buttonNeutral label: 'Neutral';
	icon: (self iconNamed: #user).
	
	buttonBad label: 'Bad';
	icon: (self iconNamed: #thumbsDown).

	self focusOrder add: buttonHappy;
						add: buttonNeutral;
						add: buttonBad
	

