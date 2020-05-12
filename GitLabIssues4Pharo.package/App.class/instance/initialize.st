initialization
initialize

	self url: 'https://gitlab.com/api/v4'.
	self user: User get.
	self project: Project get
	