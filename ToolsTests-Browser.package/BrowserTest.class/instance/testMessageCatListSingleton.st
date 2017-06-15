as yet unclassified
testMessageCatListSingleton
	| catName |
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	
	self assert: browser messageCatListSingleton = #().
	
	catName := browser messageCategoryList second.
	browser selectMessageCategoryNamed: catName.
	
	self assert: browser messageCatListSingleton = {catName}.