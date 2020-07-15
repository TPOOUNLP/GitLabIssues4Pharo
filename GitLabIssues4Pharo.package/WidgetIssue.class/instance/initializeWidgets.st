initialization
initializeWidgets 
 labeltitle := self newLabel.
 title:= self newTextInput.
 labeldescription := self newLabel.
 description:= self newTextInput.

 labeltitle label:'Title'.
 labeldescription label:' Descrption'.		

 self focusOrder
add: labeltitle ;
add: title;
add: labeldescription ;
add: description



 
 	
	