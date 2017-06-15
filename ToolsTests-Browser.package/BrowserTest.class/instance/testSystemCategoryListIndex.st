as yet unclassified
testSystemCategoryListIndex
	| oldCat |
	
	browser systemCategoryListIndex: 1.
	oldCat := browser selectedSystemCategory.
	self assert:	browser selectedSystemCategory = browser systemCategoryList first.
		
	browser systemCategoryListIndex: 2.
	self deny: browser selectedSystemCategory = oldCat.
	self assert:	browser selectedSystemCategory = browser systemCategoryList second.