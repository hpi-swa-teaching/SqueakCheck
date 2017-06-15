testing - message list
testAlphabetizingMethodsPreservesPlaceWhenNoMessageCategorySelected
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser selectMessageCategoryNamed: nil.
	browser selectMessageNamed: nil.
	browser alphabetizeMessageCategories.

	self assert: browser selectedMessageCategoryName = nil.
	self assert: browser selectedMessageName = nil.