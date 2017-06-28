as yet unclassified
testSelectClassEditSelectionWhenCommentSelected
	| editSelection |
	browser selectSystemCategory: Heap category.
	browser selectClass: Heap.
	browser editComment.
	browser messageListIndex: 0.
	browser messageListIndex: 0.

	editSelection := browser editSelection.
	browser selectClass: Interval.
	self assert: browser editSelection = editSelection.