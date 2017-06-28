as yet unclassified
testAlphabetizeMessageCategoriesLeavesClassSelected
	browser selectSystemCategory: browser class category.
	browser selectClassNamed: browser class name.
	
	"This is a no-op."
	browser alphabetizeMessageCategories.
	self assert: browser selectedClassName = browser class name.