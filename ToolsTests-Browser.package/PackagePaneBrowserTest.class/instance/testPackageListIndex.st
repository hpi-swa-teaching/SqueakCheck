as yet unclassified
testPackageListIndex
	browser packageListIndex: 0.
	self assert: browser selectedClass isNil.
	
	browser selectCategoryForClass: browser class.
	
	"Clicking the selected package unselects the selected class."
	browser packageListIndex: browser packageListIndex.
	self assert: browser selectedClass isNil.