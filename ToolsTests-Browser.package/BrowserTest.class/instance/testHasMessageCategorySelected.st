as yet unclassified
testHasMessageCategorySelected
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser messageCategoryListIndex: 0.
	self deny: browser hasMessageCategorySelected.
	
	browser messageCategoryListIndex: 1.
	self assert: browser hasMessageCategorySelected.
	
	browser messageCategoryListIndex: 0.
	self deny: browser hasMessageCategorySelected.