as yet unclassified
testBuildMessageCategoryBrowserEditString
	| spawn |
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser messageCategoryListIndex: 1.
	browser messageListIndex: 1.
	
	spawn := browser buildMessageCategoryBrowserEditString: 'We don''t yet test that we do the right thing with this string!'.
	[self assert: spawn selectedSystemCategory = browser selectedSystemCategory.
	self assert: spawn selectedClass = browser selectedClass.
	self assert: spawn messageCategoryListIndex = browser messageCategoryListIndex.
	self assert: spawn messageListIndex = browser messageListIndex]
		ensure: [ ToolBuilder default close: spawn topView ].