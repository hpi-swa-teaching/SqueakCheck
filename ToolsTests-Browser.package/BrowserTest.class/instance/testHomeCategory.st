as yet unclassified
testHomeCategory
	"This also 'just happens' to test #selectOriginalCategoryForCurrentMethod. It's not appropriate to directly test a private method. (It's a private method because its comment says so, not its category.)"
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	browser messageCategoryListIndex: 0. "Select -- all --"
	browser selectMessageNamed: browser messageList first.
	browser showHomeCategory.
	
	self assert: browser selectedMessageCategoryName = (browser class organization categoryOfElement: browser selectedMessageName).