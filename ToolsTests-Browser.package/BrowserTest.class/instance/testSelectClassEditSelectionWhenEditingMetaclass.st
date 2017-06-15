as yet unclassified
testSelectClassEditSelectionWhenEditingMetaclass
	browser selectSystemCategory: Heap category.
	browser selectClass: Heap.
	browser metaClassIndicated: true.
	browser messageListIndex: 0.
	browser messageListIndex: 0.
	
	browser selectClass: Interval.
	self assert: browser editSelection = #editClass.