write and read
import
	| stream line |
	
	stream := (FileSystem disk workingDirectory / 'gc.config') readStream.
	
	[ stream atEnd ] whileFalse: [ 
		line := stream nextLine splitOn: ' '.
		self perform: (line first , ':') asSymbol with: (line second) asString ].
	
	stream close.
	
	"Sub/Unsub to events"


