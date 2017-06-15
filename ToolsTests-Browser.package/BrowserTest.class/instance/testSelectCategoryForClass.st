as yet unclassified
testSelectCategoryForClass
	browser selectCategoryForClass: Browser.
	self assert: browser selectedSystemCategory = Browser category.
	
	browser selectCategoryForClass: TestCase.
	self assert: browser selectedSystemCategory = TestCase category.