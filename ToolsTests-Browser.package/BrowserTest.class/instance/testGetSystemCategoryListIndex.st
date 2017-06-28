as yet unclassified
testGetSystemCategoryListIndex
	| cat |
	cat := browser systemCategoryList first.
	browser selectSystemCategory: cat.
	self assert: browser systemCategoryListIndex = (browser systemCategoryList indexOf: browser selectedSystemCategory).