initialization
initializeWidgets
"widget instantiation"
widgetcombine := self instantiate: WidgetProjectIssueList.
buttonSync:= self newButton.
buttonConfig:= self newButton.

"initial configuration button"
"screen label: 'Bienvenido'."
self focusOrder
add: widgetcombine;
add: buttonSync.

