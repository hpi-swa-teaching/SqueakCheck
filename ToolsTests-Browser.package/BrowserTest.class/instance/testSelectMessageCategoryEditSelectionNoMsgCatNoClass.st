as yet unclassified
testSelectMessageCategoryEditSelectionNoMsgCatNoClass
	browser selectSystemCategory: browser class category.
	browser selectClass: nil.
.
	browser messageCategoryListIndex: 0.
	
	self assert: browser editSelection = #newClass.