testing
testTypingCollectsOnlyMessagesSentToParameter
	self
		assert: #(==) asSet
		equals: (TheoryTyper new
			messagesSentToDatum: (self class >> #methodWithOneMessage:)) first