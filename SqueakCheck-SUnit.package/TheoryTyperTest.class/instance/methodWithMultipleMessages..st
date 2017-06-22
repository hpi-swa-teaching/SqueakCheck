data
methodWithMultipleMessages: anObject
	(anObject = 'a')
		ifTrue: [(anObject == 'a')
			ifFalse: [anObject hash]].