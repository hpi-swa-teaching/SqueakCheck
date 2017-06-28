as yet unclassified
setUp
	browser := (MessageTrace
		openMessageList: (SystemNavigation default allImplementorsOf: #browseAllImplementorsOf:)
		name: 'Test MessageSet'
		autoSelect: nil) model.
		
	browser addDependent: self.