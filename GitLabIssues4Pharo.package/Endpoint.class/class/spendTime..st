accessing
spendTime: anIssue 

	^self url , '/projects/{1}/issues/{2}/add_spent_time' format: { anIssue project_id . anIssue iid }