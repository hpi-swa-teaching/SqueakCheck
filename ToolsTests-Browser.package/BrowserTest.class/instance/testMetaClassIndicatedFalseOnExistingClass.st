as yet unclassified
testMetaClassIndicatedFalseOnExistingClass
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser metaClassIndicated: false.
	
	self assert: browser messageListIndex = 0.
	self assert: browser messageCategoryListIndex = 0.
	self deny: browser contents isEmpty. "It shows the class definition."
	
	self deny: browser messageCategoryList isEmpty.
	
	self assert: browser messageList = (browser class organization allMethodSelectors).
	self assert: browser editSelection = #editClass.