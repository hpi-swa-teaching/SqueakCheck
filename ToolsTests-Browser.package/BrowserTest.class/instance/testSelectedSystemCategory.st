as yet unclassified
testSelectedSystemCategory
	| cat newCat |
	cat := browser systemCategoryList first.
	newCat := browser systemCategoryList second.
	browser selectSystemCategory: cat.
	self assert:	browser selectedSystemCategory = cat.
		
	browser systemCategoryListIndex: 2.
	self assert:	browser selectedSystemCategory = newCat.