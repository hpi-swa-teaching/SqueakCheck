as yet unclassified
testChangeMessageCategoriesLeavesClassSelected
	browser selectSystemCategory: browser systemCategoryList first.
	browser selectClassNamed: browser classList first.
	
	"This is a no-op."
	browser changeMessageCategories: browser classOrMetaClassOrganizer printString.
	self assert: browser selectedClassName = browser class name.