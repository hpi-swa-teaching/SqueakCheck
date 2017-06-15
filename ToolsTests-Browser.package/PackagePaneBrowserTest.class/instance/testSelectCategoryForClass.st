as yet unclassified
testSelectCategoryForClass
	| pkgName |
	pkgName := browser class category copyUpTo: $-.
	browser selectCategoryForClass: browser class.
	self assert: browser selectedSystemCategory = browser class category.
	self assert: browser packageListIndex = (browser packageList indexOf: pkgName).
	browser selectSystemCategory: nil.
	self assert: browser classList isEmpty.