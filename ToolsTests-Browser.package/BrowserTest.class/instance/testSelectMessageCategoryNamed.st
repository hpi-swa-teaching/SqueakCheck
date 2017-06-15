as yet unclassified
testSelectMessageCategoryNamed
	| catName |
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	
	catName := browser messageCategoryList anyOne.
	browser selectMessageCategoryNamed: catName.
	self assert: browser selectedMessageCategoryName = catName.