as yet unclassified
testMetaClassIndicatedNotWithNoSystemCategorySelected
	browser selectSystemCategory: nil.
	browser metaClassIndicated: false.
	
	self assert: browser messageListIndex = 0.
	self assert: browser messageCategoryListIndex = 0.
	self assert: browser contents isEmpty. "It shows the Class definition."
	self assert: browser messageCategoryList isEmpty.
	self assert: browser editSelection = #none.