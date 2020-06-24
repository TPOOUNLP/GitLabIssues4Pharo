accessing
issueByIid: anIid
	"Returns a new Issue (from the local collection) that corresponds with the given id"

	^self issues detect: [ :issue | issue iid = anIid ]
					 ifNone: [ nil ]