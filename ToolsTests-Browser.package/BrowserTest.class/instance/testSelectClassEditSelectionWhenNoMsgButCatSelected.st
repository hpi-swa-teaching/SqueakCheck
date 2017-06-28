as yet unclassified
testSelectClassEditSelectionWhenNoMsgButCatSelected
	browser selectSystemCategory: Heap category.
	browser selectClass: Heap.
	browser selectMessageCategoryNamed: 'adding'.
	browser messageListIndex: 0.
	
	browser selectClass: Interval.
	self assert: browser editSelection = #newMessage.