as yet unclassified
testMessageCategoryListIndex
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	
	self assert: browser messageCategoryList size > 1 description: 'Sanity check: test refers to first two categories.'.
	
	browser messageCategoryListIndex: 0.
	self assert: browser selectedMessageCategoryName isNil.
	
	browser messageCategoryListIndex: 1.
	self assert: browser selectedMessageCategoryName = browser messageCategoryList first.
	
	browser messageListIndex: 1.
	browser messageCategoryListIndex: 2.
	self assert: browser selectedMessageName isNil description: 'Changing category deselects method'.