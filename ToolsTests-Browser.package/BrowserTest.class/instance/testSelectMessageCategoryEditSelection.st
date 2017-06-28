as yet unclassified
testSelectMessageCategoryEditSelection
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser selectMessageCategoryNamed: browser messageCategoryList first.
	
	self assert: browser editSelection = #newMessage.