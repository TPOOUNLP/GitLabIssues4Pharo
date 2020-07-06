initialization
initializeWidgets
	
	"widget instantiation"
screen := self newLabel.
inputTokenGitLab := self newTextInput. 

"configuration button"

screen label: 'GuiLabelGitlab'.
inputTokenGitLab content: 'Ingrese aqui su token'.

"specification of order of focus"
self focusOrder
add: screen;
add: inputTokenGitLab.