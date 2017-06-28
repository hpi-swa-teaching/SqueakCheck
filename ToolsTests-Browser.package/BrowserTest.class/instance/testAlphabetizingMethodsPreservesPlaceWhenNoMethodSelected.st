testing - message list
testAlphabetizingMethodsPreservesPlaceWhenNoMethodSelected
	| oldCategory |
	oldCategory := 'breakpoints'.
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser selectMessageCategoryNamed: oldCategory.
	browser selectMessageNamed: nil.
	browser alphabetizeMessageCategories.

	self assert: browser selectedMessageCategoryName = oldCategory.
	self assert: browser selectedMessageName = nil.