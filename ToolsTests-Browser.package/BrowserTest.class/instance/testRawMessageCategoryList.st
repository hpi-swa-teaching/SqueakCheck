as yet unclassified
testRawMessageCategoryList
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	
	self assert: browser rawMessageCategoryList = browser class organization categories.
	
	browser selectClass: nil.
	self assert: browser rawMessageCategoryList = #().
	
	browser selectClass: browser class.
	browser metaClassIndicated: true.
	self assert: browser rawMessageCategoryList = browser class classSide organization categories.