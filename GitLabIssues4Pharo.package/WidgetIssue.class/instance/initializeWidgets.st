initialization
initializeWidgets 
	
 labeltitle := self newLabel.
 labeltitle label:'Title'.
 titleinput:= self newTextInput.
 titleinput ghostText: 'Ingrese titulo'.
 
 labeldescription := self newLabel.
 labeldescription label:' Descrption'.	
 description:= self newTextInput.
 buttonSave := self newButton.


	
		
 buttonSave label: 'Save'; icon: (self iconNamed: #thumbsUp).		

 self focusOrder
add: labeltitle;
add: titleinput;
add: labeldescription;
add: description;
add: buttonSave


 	
	