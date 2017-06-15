as yet unclassified
testMetaClassIndicatedNotOnNoClass
	browser selectSystemCategory: browser class category.
	browser selectClass: nil.
	browser metaClassIndicated: false.
	
	self assert: browser messageListIndex = 0.
	self assert: browser messageCategoryListIndex = 0.
	self deny: browser contents isEmpty. "It shows the class definition."
	
	self assert: browser messageCategoryList isEmpty.
	
	self assert: browser messageList isEmpty.
	self assert: browser editSelection = #newClass.