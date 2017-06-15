testing
testSelectedMessageName
	| firstSel |
	firstSel := browser messageList first selector.
	
	browser messageListIndex: 1.
	self assert: browser selectedMessageName = firstSel.
	
	browser messageListIndex: 0.
	self assert: browser selectedMessageName isNil.
	
	"And just to be sure:"
	browser messageListIndex: 1.
	self assert: browser selectedMessageName = firstSel.