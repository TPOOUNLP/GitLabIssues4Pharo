accessing
notesByIssueIid: anIid

	^self url , '/projects/{1}/issues/{2}/notes' format: { GitlabConnector get selectedProject id . anIid }