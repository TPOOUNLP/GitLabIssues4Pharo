accessing
notes: anIssue

	^self url , '/projects/{1}/issues/{2}/notes' format: { anIssue project_id . anIssue iid }