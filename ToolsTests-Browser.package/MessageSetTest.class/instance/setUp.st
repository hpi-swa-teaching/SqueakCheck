running
setUp
	browser := (MessageSet
		openMessageList: (SystemNavigation default allImplementorsOf: #browseAllImplementorsOf:)
		name: 'Test MessageSet'
		autoSelect: nil) model.

	browser addDependent: self.