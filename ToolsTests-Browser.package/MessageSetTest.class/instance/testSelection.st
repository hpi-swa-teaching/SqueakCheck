testing
testSelection
	| firstRef |
	firstRef := browser messageList first.
	
	browser messageListIndex: 1.
	self assert: browser selection = firstRef.
	
	browser messageListIndex: 0.
	self assert: browser selection isNil.
	
	"And just to be sure:"
	browser messageListIndex: 1.
	self assert: browser selection = firstRef.