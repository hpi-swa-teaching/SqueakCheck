as yet unclassified
testSelectMessageNamed
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser messageCategoryListIndex: 1.

	browser selectMessageNamed: browser messageList first.
	self assert: browser selectedMessageName = browser messageList first.
	self assert: browser messageListIndex = 1.
		
	browser selectMessageNamed: nil.
	self assert: browser selectedMessageName isNil.
	self assert: browser messageListIndex = 0.
	
	browser selectMessageNamed: browser messageList second.
	self assert: browser selectedMessageName = browser messageList second.
	self assert: browser messageListIndex = 2.
	
	browser selectMessageNamed: browser messageList first asString.
	self assert: browser selectedMessageName = browser messageList first.
	self assert: browser messageListIndex = 1.