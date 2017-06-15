as yet unclassified
testClassList
	browser selectSystemCategory: browser class category.
	self assert: browser classList = (SystemOrganization listAtCategoryNamed: browser class category).
	
	browser selectSystemCategory: nil.
	self assert: browser classList isEmpty.