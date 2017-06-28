as yet unclassified
testDefaultClassList
	browser selectSystemCategory: nil.
	self assert: browser defaultClassList isEmpty.
	
	browser selectSystemCategory: Browser category.
	self assert: browser defaultClassList = (SystemOrganization listAtCategoryNamed: Browser category)