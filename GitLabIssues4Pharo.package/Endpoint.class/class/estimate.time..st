accessing
estimate: anIssue time: aTime
	^ self url , '/projects/{1}/issues/{2}/time_estimate?duration={3}h'
		format:
			{anIssue project_id.
			anIssue iid.
			aTime}