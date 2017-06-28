as yet unclassified
testShowHomeCategory
	browser selectSystemCategory: browser class category.
	browser selectClass: browser class.
	"Select '--all--'."
	browser selectMessageCategoryNamed: browser messageCategoryList first.
	browser selectMessageNamed: browser messageList first.
	
	browser showHomeCategory.
	self assert: browser messageCategoryListIndex > 1.