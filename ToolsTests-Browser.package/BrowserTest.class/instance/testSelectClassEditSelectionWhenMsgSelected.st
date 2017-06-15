as yet unclassified
testSelectClassEditSelectionWhenMsgSelected
	browser selectSystemCategory: Heap category.
	browser selectClass: Heap.
	browser selectMessageCategoryNamed: 'adding'.
	browser messageListIndex: (browser messageList indexOf: #add:).
	
	browser selectClass: Interval.
	self assert: browser editSelection = #editMessage.