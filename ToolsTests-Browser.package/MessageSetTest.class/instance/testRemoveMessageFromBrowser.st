testing
testRemoveMessageFromBrowser
	| count sel |
	browser messageListIndex: 1.
	sel := browser selection.
	
	browser removeMessageFromBrowser.
	self deny: (browser messageList includes: sel) description: 'Method not removed'.

	browser messageListIndex: 0.
	count := browser messageList size.
	browser removeMessageFromBrowser.
	self assert: count = browser messageList size description: 'Some method was removed'.