as yet unclassified
testMetaClassIndicatedTrueOnExistingClass
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser metaClassIndicated: true.
	
	self assert: browser messageListIndex = 0.
	self assert: browser messageCategoryListIndex = 0.
	self deny: browser contents isEmpty. "It shows the Class definition."
	self deny: browser messageCategoryList isEmpty.
	
	self assert: browser messageList = (browser class classSide organization allMethodSelectors).