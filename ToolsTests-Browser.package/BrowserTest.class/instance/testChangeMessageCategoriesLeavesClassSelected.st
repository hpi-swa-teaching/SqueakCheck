as yet unclassified
testChangeMessageCategoriesLeavesClassSelected
	browser selectSystemCategory: browser class category.
	browser selectClassNamed: browser class name.
	
	"This is a no-op."
	browser changeMessageCategories: browser classOrMetaClassOrganizer printString.
	self assert: browser selectedClassName = browser class name.