initialization
initializeWidgets
	
	"widget instantiation"
connector:= GitlabConnector withToken: 'h1XrDzHaxbyYxuAv9Rsy'.	
screen := self newLabel.
inputTokenGitLab := self newTextInput. 
buttonBad := self newButton.
listprojects := self newList.
listprojects  displayBlock: [ :m | m selector ].
listissues := self newList. 
listissues displayBlock: [ :m | m selector ].




"initial configuration button"

screen label: 'Bienvenido'.


buttonBad 
label: 'Actualizar';
icon: (self iconNamed: #thumbsUp).


"specification of order of focus"
self focusOrder
add: screen;
add: buttonBad;
add: inputTokenGitLab;
add: listprojects;
add: listissues.