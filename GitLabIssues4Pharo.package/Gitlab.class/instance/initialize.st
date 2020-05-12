initialization
initialize

	self url: 'https://gitlab.com/api/v4'.
	self user: (User new: self).
	self project: (Project new: self)
	