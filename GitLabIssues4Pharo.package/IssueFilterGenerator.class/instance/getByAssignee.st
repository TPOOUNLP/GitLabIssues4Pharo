filter creation
getByAssignee

	^self filters at: 'assignee_id' ifAbsent: [ nil ]