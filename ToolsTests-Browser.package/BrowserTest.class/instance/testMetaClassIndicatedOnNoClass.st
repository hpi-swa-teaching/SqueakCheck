as yet unclassified
testMetaClassIndicatedOnNoClass
	browser selectSystemCategory: browser class category.
	browser selectClass: nil.
	browser metaClassIndicated: true.
	
	self assert: browser messageListIndex = 0.
	self assert: browser messageCategoryListIndex = 0.
	self assert: browser contents isEmpty.
	
	self assert: browser messageCategoryList isEmpty.
	
	self assert: browser messageList isEmpty.
	self assert: browser editSelection = #none.