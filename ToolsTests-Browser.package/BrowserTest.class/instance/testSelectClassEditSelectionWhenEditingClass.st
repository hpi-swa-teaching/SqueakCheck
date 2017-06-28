as yet unclassified
testSelectClassEditSelectionWhenEditingClass
	browser selectSystemCategory: Heap category.
	browser selectClass: Heap.
	browser metaClassIndicated: false.
	browser messageListIndex: 0.
	browser messageListIndex: 0.
	
	browser selectClass: Interval.
	self assert: browser editSelection = #editClass.