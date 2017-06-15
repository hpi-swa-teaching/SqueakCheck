testing
testContents
	browser messageListIndex: 0.
	self assert: browser contents = ''.
	
	browser messageListIndex: 1.
	self deny: browser contents = ''.
	