testing - message list
testAlphabetizingMethodsPreservesPlace
	| oldCategory oldMethod |
	oldCategory := 'breakpoints'.
	oldMethod := #toggleBreakOnEntry.
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser selectMessageCategoryNamed: oldCategory.
	browser selectMessageNamed: oldMethod.
	browser alphabetizeMessageCategories.

	self assert: browser selectedMessageCategoryName = oldCategory.
	self assert: browser selectedMessageName = oldMethod.