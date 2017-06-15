as yet unclassified
testSelectMessageCategoryEditSelectionNoMsgCat
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
.
	browser messageCategoryListIndex: 0.
	
	self assert: browser editSelection = #editClass.