accessing
issueByIid: anIid
	"Returns a new Issue (from the local collection) that corresponds with the given id"
	"Should we get it from the api or the local collection?"

	^self issues detect: [ :issue | issue iid = anIid ]
					 ifNone: [ nil ]