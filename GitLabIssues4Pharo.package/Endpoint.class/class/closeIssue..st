accessing
closeIssue: anIssue
	^ self url , '/projects/{1}/issues/{2}?state_event=close'
		format:
			{anIssue project_id.
			anIssue iid}