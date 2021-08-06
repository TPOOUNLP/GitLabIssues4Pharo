accessing
spendTime: anIssue time: aTime
	^ self url , '/projects/{1}/issues/{2}/add_spent_time?duration={3}h'
		format:
			{anIssue project_id.
			anIssue iid.
			aTime}