testing
testHasMessageSelected
	browser messageListIndex: 1.
	self assert: browser hasMessageSelected.
	
	browser messageListIndex: 0.
	self deny: browser hasMessageSelected.
	
	"And just to be sure:"
	browser messageListIndex: 1.
	self assert: browser hasMessageSelected.