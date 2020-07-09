initialization
initializeWidgets
	
	"widget instantiation"

widgetcombine := self instantiate: WidgetProjectIssueList.
screen := self newLabel.
inputTokenGitLab := self newTextInput. 
buttonBad := self newButton.


"initial configuration button"
screen label: 'Bienvenido'.

" initialization button bad "
buttonBad 
label: 'Actualizar';
icon: (self iconNamed: #thumbsUp).


"specification of order of focus"
self focusOrder
add: screen;
add: widgetcombine;
add: buttonBad;
add: inputTokenGitLab;
add: listprojects;
add: listissues.