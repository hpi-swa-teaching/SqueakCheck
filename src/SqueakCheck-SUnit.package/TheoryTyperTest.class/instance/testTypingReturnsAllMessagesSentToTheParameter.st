tests
testTypingReturnsAllMessagesSentToTheParameter
	self
		assert: #(== = hash) asSet
		equals: (TheoryTyper new
			messagesSentToDatum: (self class >> #methodWithMultipleMessages:)) first