as yet unclassified
testSpawnHierarchy
	| spawn |
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser selectMessageCategoryNamed: browser messageCategoryList last.
	browser messageListIndex: (browser messageList size).

	spawn := browser spawnHierarchy.
	[self assert: spawn selectedSystemCategory = browser selectedSystemCategory.
	self assert: spawn selectedClassName = browser selectedClassName.
	self assert: spawn selectedMessageCategoryName = browser selectedMessageCategoryName.
	self assert: spawn messageListIndex = browser messageListIndex.]
		ensure: [ ToolBuilder default close: spawn topView ].