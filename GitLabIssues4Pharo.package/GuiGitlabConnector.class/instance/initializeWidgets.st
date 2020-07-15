initialization
initializeWidgets
"widget instantiation"
widgetcombine := self instantiate: WidgetProjectIssueList.
buttonSync:= self newButton.
buttonConfig:= self newButton.

buttonSync label: 'Sync'; icon: (self iconNamed: #thumbsUp).

buttonConfig label: 'Config'; icon: (self iconNamed: #user).
"initial configuration button"
"screen label: 'Bienvenido'."
self focusOrder
add: widgetcombine;
add: buttonSync;
add: buttonConfig 