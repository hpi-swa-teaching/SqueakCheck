as yet unclassified
testSelectClassReselectsMessage
	"Colections-Sequences contains a number of classes with similar protocols. In particular, several classes have a method called #add: in a category 'adding'."
	| selectedMsgCat selectedMethod |
	selectedMsgCat := 'adding'.
	selectedMethod := #add:.
	browser selectSystemCategory: Heap category.
	browser selectClass: Heap.
	browser selectMessageCategoryNamed: selectedMsgCat.
	browser messageListIndex: (browser messageList indexOf: selectedMethod).
	
	browser selectClass: Interval.
	
	self assert: browser selectedMessageCategoryName = selectedMsgCat.
	self assert: browser selectedMessageName = selectedMethod.