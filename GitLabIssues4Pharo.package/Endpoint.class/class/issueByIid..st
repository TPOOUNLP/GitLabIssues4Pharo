accessing
issueByIid: anIid

	^self url , '/projects/{1}/issues/{2}' format: { App get selectedProject id . anIid }