tests
testTypingCollectsKeywords
	self
		assert: #(#normalize #+) asSet
		equals: (TheoryTyper new
			messagesSentToDatum: (self class >> #methodWithOneKeywordMessage:)) first