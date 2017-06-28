testing
testArrayaProduceSingleElementArrays
	self assert: #(1) equals: (SequenceableCollection dataFrom: generator).
	self assert: #(1) equals: (Array dataFrom: generator).
	self assert: #(1) equals: (OrderedCollection dataFrom: generator).