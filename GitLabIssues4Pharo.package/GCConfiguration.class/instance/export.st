write and read
export
	| stream |
	
	stream := (FileSystem disk workingDirectory / 'gc.config') writeStream.
	
	GCConfiguration instanceVariableNamesDo: [ :var |
		stream nextPutAll: var.
		stream nextPutAll: ' '.
		stream nextPutAll: (self perform: var) asString.
		stream nextPutAll: String crlf ].
	
	stream close