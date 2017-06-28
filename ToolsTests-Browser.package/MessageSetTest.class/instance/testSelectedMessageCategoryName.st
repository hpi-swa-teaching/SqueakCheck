testing
testSelectedMessageCategoryName
	| firstCat methodRef |
	methodRef := browser messageList first.
	firstCat := methodRef actualClass organization categoryOfElement: methodRef selector.
	
	browser messageListIndex: 1.
	self assert: browser selectedMessageCategoryName = firstCat.
	
	browser messageListIndex: 0.
	self assert: browser selectedMessageCategoryName isNil.
	
	"And just to be sure:"
	browser messageListIndex: 1.
	self assert: browser selectedMessageCategoryName = firstCat.