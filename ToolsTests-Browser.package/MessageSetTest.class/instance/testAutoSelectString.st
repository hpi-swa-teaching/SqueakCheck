testing
testAutoSelectString
	browser autoSelectString: 'browseAllImplementorsOf:'.
	self assert: browser autoSelectString = 'browseAllImplementorsOf:'.
	browser messageListIndex: 2.
	self assert: (updates includes: #autoSelect).