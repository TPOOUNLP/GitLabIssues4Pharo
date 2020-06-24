accessing
issueByIid: anIid

	^self url , '/projects/{1}/issues/{2}' format: { GitlabConnector get selectedProject id . anIid }