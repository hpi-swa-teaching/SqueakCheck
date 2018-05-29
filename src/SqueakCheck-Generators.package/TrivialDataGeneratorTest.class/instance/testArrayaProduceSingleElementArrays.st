testing
testArrayaProduceSingleElementArrays

	self
		assert: ((SequenceableCollection dataFrom: generator) includes: {1});
		assert: ((Array dataFrom: generator) includes: {1});
		assert: ((OrderedCollection dataFrom: generator) includes: {1}).