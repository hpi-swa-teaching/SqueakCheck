as yet unclassified
testBuildMessageCategoryBrowserEditStringNoCategorySelected
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser messageCategoryListIndex: 0.
	
	self assert: (browser buildMessageCategoryBrowserEditString: 'foo') isNil.