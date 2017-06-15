as yet unclassified
testSelectClassEditSelectionNoClass
	browser selectSystemCategory: browser class category.
	
	browser selectClass: nil.
	self assert: browser editSelection = #newClass.