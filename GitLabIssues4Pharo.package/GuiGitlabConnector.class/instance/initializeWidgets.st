initialization
initializeWidgets
	
	"widget instantiation"
screen := self newLabel.
inputTokenGitLab := self newTextInput. 
buttonBad := self newButton.

"configuration button"

screen label: 'Bienvenido'.
inputTokenGitLab content: 'Ingrese aqui su token'.

buttonBad 
label: 'Actualizar';
icon: (self iconNamed: #thumbsUp).


"specification of order of focus"
self focusOrder
add: screen;
add: buttonBad;
add: inputTokenGitLab.