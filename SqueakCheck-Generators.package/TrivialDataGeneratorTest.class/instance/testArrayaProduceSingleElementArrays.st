testing
testArrayaProduceSingleElementArrays
	self assert: ((SequenceableCollection dataFrom: generator) includes: #(1)).
	self assert: ((Array dataFrom: generator) includes: #(1)).
	self assert: ((OrderedCollection dataFrom: generator) includes: #(1)).