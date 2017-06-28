as yet unclassified
testMessageList
	browser selectSystemCategory: browser class category.
	browser selectClass: nil.
	self assert: browser messageList isEmpty.
	
	browser selectClass: browser class.
	browser messageCategoryListIndex: 0.
	self assert: browser messageList = browser classOrMetaClassOrganizer allMethodSelectors.
	browser messageCategoryListIndex: 1. "-- all --"
	self assert: browser messageList = browser classOrMetaClassOrganizer allMethodSelectors.
	
	browser messageCategoryListIndex: 2.
	self assert: browser messageList = (browser classOrMetaClassOrganizer listAtCategoryNumber: 1).
	
	browser metaClassIndicated: true.
	browser messageCategoryListIndex: 0.
	self assert: browser messageList = browser classOrMetaClassOrganizer allMethodSelectors.
	
	browser messageCategoryListIndex: 1. "-- all --"
	self assert: browser messageList = browser classOrMetaClassOrganizer allMethodSelectors.
	
	browser messageCategoryListIndex: 2.
	self assert: browser messageList = (browser classOrMetaClassOrganizer listAtCategoryNumber: 1).